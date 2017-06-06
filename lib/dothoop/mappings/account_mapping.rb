module Dothoop
  class AccountMapping
    include Kartograph::DSL

    kartograph do
      mapping Account
      root_key singular: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :first_name, key: 'firstName'
        property :last_name, key: 'lastName'
        property :email
        property :default_profile_id, key: 'defaultProfileId'
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
