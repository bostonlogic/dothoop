# GET /profile/:profile_id/loop/:loop_id/participant

# Response
#
# {
#   "meta": {
#     "total": 3
#   },
#   "data": [
#     {
#       "id": 2355,
#       "fullName": "Brian Erwin",
#       "email": "brianerwin@newkyhome.com",
#       "role": "BUYER"
#     },
#     {
#       "id": 57567,
#       "fullName": "Allen Agent",
#       "email": "allen.agent@gmail.com",
#       "role": "LISTING_AGENT"
#     },
#     {
#       "id": 24743,
#       "fullName": "Sean Seller",
#       "email": "sean.seller@yahoo.com",
#       "role": "SELLER"
#     }
#   ]
# }


# GET /profile/:profile_id/loop/:loop_id/participant/:participant_id

# Response
#
# {
#   "data": {
#     "id": 2355,
#     "fullName": "Brian Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "role": "BUYER"
#   }
# }


# POST /profile/:profile_id/loop/:loop_id/participant
# {
#   "fullName": "Brian Erwin",
#   "email": "brian@gmail.com",
#   "role": "BUYER"
# }

# Response
#
# {
#   "data": {
#     "id": 2355,
#     "fullName": "Brian Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "role": "BUYER"
#   }
# }


# PATCH /profile/:profile_id/loop/:loop_id/participant/:participant_id
# {
#   "email": "brian@gmail.com"
# }

# Response
#
# {
#   "data": {
#     "id": 2355,
#     "fullName": "Brian Erwin",
#     "email": "brian@gmail.com",
#     "role": "BUYER"
#   }
# }


# DELETE /profile/:profile_id/loop/:loop_id/participant/:participant_id

# Response
#
# Status: 204 No Content
