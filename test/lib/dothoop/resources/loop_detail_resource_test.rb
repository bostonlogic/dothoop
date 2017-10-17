# GET /profile/:profile_id/loop/:loop_id/detail

# Response
#
# {
#   "data": {
#     "Property Address": {
#       "Country": "USA",
#       "Street Number": "333",
#       "Street Name": "Main St",
#       "Unit Number": "123",
#       "City": "San Francisco",
#       "State/Prov": "CA",
#       "Zip/Postal Code": "94105",
#       "County": "USA",
#       ...
#     },
#     "Financials": {
#       "Sale Commission Rate": "3",
#       "Sale Commission Split % - Buy Side": "50",
#       "Sale Commission Split % - Sell Side": "50",
#       "Sale Commission Total": "10000",
#       "Sale Commission Split $ - Buy Side": "50",
#       "Sale Commission Split $ - Sell Side": "20000",
#       ...
#     },
#     ...
#   }
# }

# PATCH /profile/:profile_id/loop/:loop_id/detail
# {
#     "Financials": {
#       "Purchase/Sale Price": "342342"
#     }
# }

# Response
#
# {
#   "data": {
#     "Property Address": {
#       "Country": "USA",
#       "Street Number": "333",
#       "Street Name": "Main St",
#       "Unit Number": "123",
#       "City": "San Francisco",
#       "State/Prov": "CA",
#       "Zip/Postal Code": "94105",
#       "County": "USA",
#       ...
#     },
#     "Financials": {
#       "Purchase/Sale Price": "342342",
#       "Sale Commission Rate": "3",
#       "Sale Commission Split % - Buy Side": "50",
#       "Sale Commission Split % - Sell Side": "50",
#       "Sale Commission Total": "10000",
#       "Sale Commission Split $ - Buy Side": "50",
#       "Sale Commission Split $ - Sell Side": "20000",
#       ...
#     },
#     ...
#   }
# }
