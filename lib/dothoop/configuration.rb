module Dothoop

  class Configuration
    attr_accessor :api_url
    attr_accessor :path_url

    def initialize
      @api_url  = 'https://api-gateway.dotloop.com'
      @path_url = 'public/v2'
    end
  end

  class << self

    def configuration
      @configuration ||= Configuration.new
    end

    def self.configuration=(config)
      @configuration = config
    end

    def configure
      yield(configuration)
    end

  end
end
