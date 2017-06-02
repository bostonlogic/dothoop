module Dothoop
  class ErrorMapping
    Error = Struct.new(:message, :id)

    include Kartograph::DSL

    kartograph do
      mapping Error

      scoped :read do
        property :code
        property :source
        property :detail
      end
    end

    def self.fail_with(klass, content)
      error = extract_collection(content, :read)
      raise klass, "Code: #{error.code}, Source: #{error.source}, Detail: #{error.detail}"
    end
  end
end

# {
#   "errors": [
#     {
#       "code": "123",
#       "source": { "pointer": "/data/attributes/profileid" },
#       "detail": "Profile id invalid"
#     },
#     {
#       "source": { "parameter": "include" },
#       "detail": "include param required but not present"
#     }
#   ]
# }
