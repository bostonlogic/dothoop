module Dothoop
  class LoopItMapping
    include Kartograph::DSL

    kartograph do
      mapping LoopIt
      root_key singular: 'data', scopes: [:read]

      scoped :create do
        property :name
        property :transactionType
        property :status
        property :streetName
        property :streetNumber
        property :unit
        property :city
        property :zipCode
        property :state
        property :country
        property :mlsPropertId
        property :mlsId
        property :templateId
        property :mlsAgentId
      end

      scoped :read do
        property :id
        property :profileId
        property :name
        property :transactionType
        property :status
        property :created
        property :updated
        property :loopUrl
      end

    end
  end
end

# POST /loop-it?profile_id=4711
# {
#   "name": "Brian Erwin",
#   "transactionType": "PURCHASE_OFFER",
#   "status": "PRE_OFFER",
#   "streetName": "Waterview Dr",
#   "streetNumber": "2100",
#   "unit": "12",
#   "city": "San Francisco",
#   "zipCode": "94114",
#   "state": "CA",
#   "country": "US",
#   "mlsPropertId": "43FSB8",
#   "mlsId": "",
#   "participants": [
#     {
#       "fullName": "Brian Erwin",
#       "email": "brianerwin@newkyhome.com",
#       "role": "BUYER"
#     },
#     {
#       "fullName": "Allen Agent",
#       "email": "allen.agent@gmail.com",
#       "role": "LISTING_AGENT"
#     },
#     {
#       "fullName": "Sean Seller",
#       "email": "sean.seller@yahoo.com",
#       "role": "SELLER"
#     }
#   ],
#   "templateId": 1424,
#   "mlsAgentId": "123456789"
# }

# response

# {
#   "data": {
#     "id": 34308,
#     "profileId": 4711,
#     "name": "Brian Erwin",
#     "transactionType": "PURCHASE_OFFER",
#     "status": "PRE_OFFER",
#     "created": "2017-05-30T21:42:17Z",
#     "updated": "2017-05-31T23:27:11Z",
#     "loopUrl": "https://www.dotloop.com/m/loop?viewId=34308"
#   }
# }
