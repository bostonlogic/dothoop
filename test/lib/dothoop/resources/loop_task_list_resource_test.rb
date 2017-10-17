require 'test_helper'

class Dothoop::LoopTaskListResourceTest < Minitest::Test

  class All < Minitest::Test
    def test_returns_an_array_of_loop_task_lists
      skip('Need to decided whether and what to test here')
    end
  end

  class Find < Minitest::Test
    def test_returns_a_loop_task_list
      skip('Need to decided whether and what to test here')
    end
  end

end
# GET /profile/:profile_id/loop/:loop_id/tasklist/

# Response
#
# {
#   "meta": {
#     "total": 3
#   },
#   "data": [
#     {
#       "id": 1234,
#       "name": "My Tasks"
#     }, ..
#   ]
# }


# GET /profile/:profile_id/loop/:loop_id/tasklist/:task_list_id

# Response
#
# {
#   "data": {
#     "id": 1234,
#     "name": "My Tasks"
#   }
# }
