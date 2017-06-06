module Dothoop
  class Account < BaseModel
    attribute :id
    attribute :first_name
    attribute :last_name
    attribute :email
    attribute :default_profile_id
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
