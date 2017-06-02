module Dothoop
  class ProfileMapping
    include Kartograph::DSL

    kartograph do
      mapping Profile
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :type
        property :company
        property :phone
        property :fax
        property :address
        property :city
        property :state
        property :zipCode
        property :default
        property :requiresTemplate
      end

      scoped :create do
        property :name
        property :company
        property :phone
        property :fax
        property :address
        property :city
        property :state
        property :zipCode
      end

    end
  end
end

# {
#   "meta": {
#     "total": 3
#   },
#   "data": [
#     {
#       "id": 3,
#       "name": "My Profile",
#       "type": "INDIVIDUAL",
#       "company": "MyCompany",
#       "phone": "+0 (123) 456 7890",
#       "fax": "+0 (123) 456 7890",
#       "address": "1234 Wall St",
#       "city": "New York",
#       "state": "NY",
#       "zipCode": "10005",
#       "default": true,
#       "requiresTemplate": true
#     },
#     ...
#   ]
# }

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

# CREATE

# {
#   "name": "My Profile",
#   "company": "MyCompany",
#   "phone": "+0 (123) 456 7890",
#   "fax": "+0 (123) 456 7890",
#   "address": "1234 Wall St",
#   "city": "New York",
#   "state": "NY",
#   "zipCode": "10005"
# }
