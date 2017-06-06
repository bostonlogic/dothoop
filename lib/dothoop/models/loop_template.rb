module Dothoop
  class LoopTemplate < BaseModel
    attribute :id
    attribute :profile_id
    attribute :name
    attribute :transaction_type
    attribute :shared
    attribute :global
  end
end

# {
#   "meta": {
#     "total": 5
#   },
#   data: [
#     {
#       "id": 423,
#       "profileId": 732453,
#       "name": "My Loop Template",
#       "transactionType": "PURCHASE_OFFER",
#       "shared": true,
#       "global": false
#     },
#     ...
#   ]
# }
#
# {
#   "data": {
#     "id": 423,
#     "profileId": 732453,
#     "name": "My Loop Template",
#     "transactionType": "PURCHASE_OFFER",
#     "shared": true,
#     "global": false
#   }
# }
