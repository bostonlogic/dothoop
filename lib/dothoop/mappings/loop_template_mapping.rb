module Dothoop
  class LoopTemplateMapping
    include Kartograph::DSL

    kartograph do
      mapping LoopTemplate
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :profile_id, key: 'profileId'
        property :name
        property :transaction_type, key: 'transactionType'
        property :shared
        property :global
      end
    end
  end
end


# {
#   "data": {
#     "id": 423,
#     "profileId": 732453,
#     "name": "My Loop Template",
#     "transactionType": "PURCHASE_OFFER",
#     "shared": true,
#     "global": false
#   }
# }
