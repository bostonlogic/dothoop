# GET /contact[?batch_size=<batch_size>&batch_number=<batch_number>&updated_min=<updated_min>]

# Response 200
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


# GET /contact/:contact_id

# Response 200
#
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


# POST /contact
# {
#   "firstName": "Brian",
#   "lastName": "Erwin",
#   "email": "brianerwin@newkyhome.com",
#   "home": "(415) 8936 332",
#   "office": "(415) 1213 656",
#   "fax": "(415) 8655 686",
#   "address": "2100 Waterview Dr",
#   "city": "San Francisco",
#   "zipCode": "94114",
#   "state": "CA",
#   "country": "US"
# }

# Response 201
#
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


# PATCH /contact/:contact_id
# {
#   "home": "(415) 888 8888"
# }

# Response 200
#
# {
#   "data": {
#     "id": 3603862,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "home": "(415) 888 8888",
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


# DELETE /contact/:contact_id

# Response 204
