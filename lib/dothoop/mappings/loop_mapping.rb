module Dothoop
  class LoopMapping
    include Kartograph::DSL

    kartograph do
      mapping Loop
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :status
        property :transaction_type, key: 'transactionType'
        property :total_task_count, key: 'totalTaskCount'
        property :completed_task_count, key: 'completedTaskCount'
        property :updated
        property :created
        property :loop_url, Key: 'loopUrl'
      end

      scoped :create do
        property :name
        property :status
        property :transaction_type, key: 'transactionType'
      end

    end
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
