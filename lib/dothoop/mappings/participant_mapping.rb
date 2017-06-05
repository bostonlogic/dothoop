module Dothoop
  class ParticipantMapping
    include Kartograph::DSL

    kartograph do
      mapping Participant
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :create do
        property :full_name, key: 'fullName'
        property :email
        property :role
      end

      scoped :read do
        property :id
        property :full_name, key: 'fullName'
        property :email
        property :role
      end

    end
  end
end

# {
#   "fullName": "Sean Seller",
#   "email": "sean.seller@yahoo.com",
#   "role": "SELLER"
# }


# {
#   "data": {
#     "id": 2355,
#     "fullName": "Brian Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "role": "BUYER"
#   }
# }
