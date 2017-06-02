module ErrorHandlingResourcable
  def self.included(base)
    base.send(:resources) do
      default_handler do |response|
        if (200...299).include?(response.status)
          next
        else
          raise Dothoop::Error.new("#{response.status}: #{response.body}")
        end
      end
    end
  end
end
