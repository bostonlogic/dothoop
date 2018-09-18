require 'test_helper'

class Dothoop::LoopResourceTest < Minitest::Test

  class All < Minitest::Test

    def test_returns_an_array_of_loops
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/42/loop").
        with(query: {batch_number: 1, batch_size: 20}).
        to_return(body: api_fixture('loop/all'))

      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopResource.new(connection: connection)
      loops = resource.all(profile_id: 42)

      assert_instance_of Dothoop::Loop, loops.first
      assert_equal [34301, 34302, 34303, 34304, 34305], loops.map(&:id)
      assert_equal 5, loops.map(&:id).size
    end

    def test_returns_an_array_of_loops_when_pagination_is_necessary
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/42/loop").
        with(query: {batch_number: 1, batch_size: 5}).
        to_return(body: api_fixture('loop/all_1'))
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/42/loop").
        with(query: {batch_number: 2, batch_size: 5}).
        to_return(body: api_fixture('loop/all_2'))

      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopResource.new(connection: connection)
      loops = resource.all(profile_id: 42, batch_size: 5)

      assert_instance_of Dothoop::Loop, loops.first
      assert_equal [34301, 34302, 34303, 34304, 34305, 34306, 34307, 34308], loops.map(&:id)
      assert_equal 8, loops.map(&:id).size
    end
  end

  class Find < Minitest::Test
    def test_returns_a_loop
      skip('Need to decided whether and what to test here')
    end
  end

  class Create < Minitest::Test
    def test_returns_a_newly_created_loop
      skip('Need to decided whether and what to test here')
    end
  end

  class Patch < Minitest::Test
    def test_returns_an_updated_loop
      skip('Need to decided whether and what to test here')
    end
  end

end

# GET /profile/:profile_id/loop[?batch_size=<batch_size>&batch_number=<batch_number>&sort=<sort>&updated_min=<updated_min>]

# Response
#
# {
#   "meta": {
#     "total": 10
#   },
#   "data": [
#     {
#       "id": 34308,
#       "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#       "status": "ARCHIVED",
#       "transactionType": "PURCHASE_OFFER",
#       "totalTaskCount": 5,
#       "completedTaskCount": 3,
#       "updated": "2017-05-30T21:42:17Z",
#       "created": "2017-05-17T01:18:37Z",
#       "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#     },
#     ...
#   ]
# }


# GET /profile/:profile_id/loop/:loop_id

# Response
#
# {
#   "data": {
#     "id": 34308,
#     "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#     "status": "ARCHIVED",
#     "transactionType": "PURCHASED",
#     "totalTaskCount": 5,
#     "completedTaskCount": 3,
#     "updated": "2013-12-03T11:46:16-05:00",
#     "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#   }
# }

# POST /profile/:profile_id/loop
# {
#   "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#   "status": "PRE_LISTING",
#   "transactionType": "LISTING_FOR_SALE"
# }

# Response
#
# {
#   "data": {
#     "id": 34308,
#     "profileId": 23483,
#     "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#     "transactionType": "LISTING_FOR_SALE",
#     "status": "PRE_LISTING",
#     "totalTaskCount": 5,
#     "completedTaskCount": 3,
#     "updated": "2013-12-03T11:46:16-05:00",
#     "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#   }
# }

# PATCH /profile/:profile_id/loop/:loop_id
# {
#   "status": "SOLD"
# }

# Response
#
# {
#   "data": {
#     "id": 34308,
#     "name": "Atturo Garay, 3059 Main, Chicago, IL 60614",
#     "transactionType": "LISTING_FOR_SALE",
#     "status": "SOLD",
#     "totalTaskCount": 5,
#     "completedTaskCount": 3,
#     "updated": "2016-1012T01:21:16-08:00",
#     "loopUrl": "https://www.dootloop.com/m/loop?viewId=34308"
#   }
# }
