module Dothoop
  class PaginatedResource
    include Enumerable

    BATCH_SIZE = 20

    attr_reader :action, :resource, :collection
    attr_accessor :total

    def initialize(action, resource, *args)
      @batch_number = 0
      @total = nil
      @action = action
      @resource = resource
      @collection = []
      @args = args
      @options = args.last.kind_of?(Hash) ? args.last : {}
    end

    def batch_size
      @options[:batch_size] || BATCH_SIZE
    end

    def [](index)
      @collection[index]
    end

    def each(start = 0, &block)
      # Start off with the first page if we have no idea of anything yet
      fetch_next_page if total.nil?

      return to_enum(:each, start) unless block

      Array(@collection[start..-1]).each(&block)

      unless last?
        start = [@collection.size, start].max
        fetch_next_page
        each(start, &block)
      end

      self
    end

    def last?
      @batch_number == total_pages || self.total.zero?
    end

    def total_pages
      return nil if self.total.nil?
      return 1 if @options.fetch(:single_batch, false)
      
      (self.total.to_f / batch_size.to_f).ceil
    end

    def ==(other)
      each_with_index.each.all? {|object, index| object == other[index] }
    end

    private

    def fetch_next_page
      @batch_number += 1
      retrieve(@batch_number)
    end

    def retrieve(batch_number, batch_size = self.batch_size)
      invoker = ResourceKit::ActionInvoker.new(action, resource, *@args)
      invoker.options[:batch_size] ||= batch_size
      invoker.options[:batch_number] = batch_number

      @collection += invoker.handle_response

      if total.nil?
        meta = MetaInformation.extract_single(invoker.response.body, :read)
        self.total = meta.total.to_i
      end
    end

  end
end
