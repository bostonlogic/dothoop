module Dothoop
  class Account < BaseModel
    attribute :id
    attribute :firstName
    attribute :lastName
    attribute :email
    attribute :defaultProfileId
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
