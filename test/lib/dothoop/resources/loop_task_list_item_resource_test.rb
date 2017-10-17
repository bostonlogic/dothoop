# GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task

# Response
#
# {
#   "meta": {
#     "total": 4
#   },
#   "data": [
#     {
#       "id": 125736485,
#       "name": "contract",
#       "due": "2016-10-21T00:00:00-04:00",
#       "completed": true
#     },
#     ...
#   ]
# }


# GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id/task/:task_list_item_id

# Response
#
# {
#   "data": {
#     "id": 125736485,
#     "name": "contract",
#     "due": "2016-10-21T00:00:00-04:00"
#   }
# }
