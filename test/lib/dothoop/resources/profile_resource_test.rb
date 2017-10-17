require 'test_helper'

class Dothoop::ProfileResourceTest < Minitest::Test

  class All < Minitest::Test
    def test_returns_an_array_of_profiles
      skip('Need to decided whether and what to test here')
    end
  end

  class Find < Minitest::Test
    def test_returns_a_profile
      skip('Need to decided whether and what to test here')
    end
  end

  class Create < Minitest::Test
    def test_returns_a_newly_created_profile
      skip('Need to decided whether and what to test here')
    end
  end

  class Patch < Minitest::Test
    def test_returns_an_updated_profile
      skip('Need to decided whether and what to test here')
    end
  end

end

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
