module Dothoop
  class AccountMapping
    include Kartograph::DSL

    kartograph do
      mapping Account
      root_key singular: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :firstName
        property :lastName
        property :email
        property :defaultProfileId
      end

    end
  end
end

# {
#   "data": {
#     "id": 1,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "defaultProfileId": 42
#   }
# }
