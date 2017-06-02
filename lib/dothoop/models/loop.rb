module Dothoop
  class Loop < BaseModel
    attribute :id
    attribute :name
    attribute :status
    attribute :transactionType
    attribute :totalTaskCount
    attribute :completedTaskCount
    attribute :updated
    attribute :created
    attribute :loopUrl
  end
end

# {
#   "meta": {
#     "total": 10
#   },
#   "data": [
#     {
#       "id": 34308,
#       "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#       "status": "ARCHIVED",
#       "transactionType": "PURCHASE_OFFER",
#       "totalTaskCount": 5,
#       "completedTaskCount": 3,
#       "updated": "2017-05-30T21:42:17Z",
#       "created": "2017-05-17T01:18:37Z",
#       "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#     },
#     ...
#   ]
# }
