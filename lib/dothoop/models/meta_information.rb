module Dothoop
  class MetaInformation < BaseModel
    include Kartograph::DSL

    kartograph do
      mapping MetaInformation
      root_key singular: 'meta', scopes: [:read]
      
      scoped :read do
        property :total
      end
    end

    attribute :total

  end
end
