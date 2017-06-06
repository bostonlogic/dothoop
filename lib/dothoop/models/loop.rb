module Dothoop
  class Loop < BaseModel
    attribute :id
    attribute :name
    attribute :status
    attribute :transaction_type
    attribute :total_task_count
    attribute :completed_task_count
    attribute :updated
    attribute :created
    attribute :loop_url
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

# {
#   "data": {
#     "id": 34308,
#     "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#     "status": "ARCHIVED",
#     "transactionType": "PURCHASED",
#     "totalTaskCount": 5,
#     "completedTaskCount": 3,
#     "updated": "2013-12-03T11:46:16-05:00",
#     "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#   }
# }
