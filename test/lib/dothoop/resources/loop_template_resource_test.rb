# GET /profile/:profile_id/loop-template

# Response 200
#
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


# GET /profile/:profile_id/loop-template/:loop_template_id

# Response 200
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
