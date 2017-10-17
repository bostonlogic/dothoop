# GET /profile

# Response
#
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


# GET /profile/:profile_id

# Response
#
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


# POST /profile
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

# Response
#
# {
#   "data": {
#     "id": 3,
#     "type": "INDIVIDUAL",
#     "name": "My Profile",
#     "company": "MyCompany",
#     "phone": "+0 (123) 456 7890",
#     "fax": "+0 (123) 456 7890",
#     "address": "1234 Wall St",
#     "city": "New York",
#     "state": "NY",
#     "zipCode": "10005"
#   }
# }


# PATCH /profile/:profile_id
# {
#   "name": "My Changed Profile Name",
#   "company": "My New Company"
# }

# Response
#
# {
#   "data": {
#     "id": 3,
#     "type": "INDIVIDUAL",
#     "name": "My Changed Profile Name",
#     "company": "My New Company",
#     "phone": "+0 (123) 456 7890",
#     "fax": "+0 (123) 456 7890",
#     "address": "1234 Wall St",
#     "city": "New York",
#     "state": "NY",
#     "zipCode": "10005"
#   }
# }
