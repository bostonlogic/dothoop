module Dothoop
  class Profile < BaseModel
    attribute :id
    attribute :name
    attribute :type
    attribute :company
    attribute :phone
    attribute :fax
    attribute :address
    attribute :city
    attribute :state
    attribute :zipCode
    attribute :requiresTemplate

    attribute :default
  end
end

# {
#   "data": {
#     "id": 3,
#     "name": "My Profile",
#     "type": "INDIVIDUAL",
#     "company": "MyCompany",
#     "phone": "+0 (123) 456 7890",
#     "fax": "+0 (123) 456 7890",
#     "address": "1234 Wall St",
#     "city": "New York",
#     "state": "NY",
#     "zipCode": "10005",
#     "requiresTemplate": true
#   }
# }
