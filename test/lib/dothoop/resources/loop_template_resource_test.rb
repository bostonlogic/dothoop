require 'test_helper'

class Dothoop::LoopTemplateResourceTest < Minitest::Test

  class All < Minitest::Test
    def test_returns_an_array_of_loop_templates
      skip('Need to decided whether and what to test here')
    end
  end

  class Find < Minitest::Test
    def test_returns_a_loop_template
      skip('Need to decided whether and what to test here')
    end
  end

end

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
