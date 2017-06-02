require "dothoop/version"
require 'dothoop/configuration'
require 'resource_kit'
require 'kartograph'

module Dothoop
  autoload :Client, 'dothoop/client'

  autoload :AccountMapping, 'dothoop/mappings/account_mapping'

  autoload :BaseModel, 'dothoop/models/base_model'
  autoload :Account, 'dothoop/models/account'

  autoload :AccountResource, 'dothoop/resources/account_resource'

  autoload :ErrorHandlingResourcable, 'dothoop/error_handling_resourcable'

  autoload :ErrorMapping, 'dothoop/mappings/error_mapping'
  Error = Class.new(StandardError)
end
