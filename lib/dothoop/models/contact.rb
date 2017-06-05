module Dothoop
  class Contact < BaseModel
    attribute :id #id
    attribute :first_name #firstName
    attribute :last_name #lastName
    attribute :email #mail
    attribute :home #home
    attribute :office #office
    attribute :fax #fax
    attribute :address #address
    attribute :city #city
    attribute :zipCode #zipCode
    attribute :state #state
    attribute :country #country
    attribute :updated #updated
  end
end


# {
#   "data": {
#     "id": 3603862,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "home": "(415) 8936 332",
#     "office": "(415) 1213 656",
#     "fax": "(415) 8655 686",
#     "address": "2100 Waterview Dr",
#     "city": "San Francisco",
#     "zipCode": "94114",
#     "state": "CA",
#     "country": "US",
#     "updated": "2017-04-20T03:48:30Z"
#   }
# }
#
# {
#   "meta": {
#     "total": 10
#   },
#   "data": [
#     {
#       "id": 3603862,
#       "firstName": "Brian",
#       "lastName": "Erwin",
#       "email": "brianerwin@newkyhome.com",
#       "home": "(415) 8936 332",
#       "office": "(415) 1213 656",
#       "fax": "(415) 8655 686",
#       "address": "2100 Waterview Dr",
#       "city": "San Francisco",
#       "zipCode": "94114",
#       "state": "CA",
#       "country": "US",
#       "updated": "2017-04-20T03:48:30Z"
#     },
#     ...
#   ]
# }
