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
      stub_request(:get, 'https://api-gateway.dotloop.com/public/v2/profile/42/loop/34301').
        to_return(body: api_fixture('loop/34301'))

      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopResource.new(connection: connection)

      dotloop_loop = resource.find(profile_id: 42, loop_id: 34301)

      assert_instance_of Dothoop::Loop, dotloop_loop
      assert_equal 34301, dotloop_loop.id
      assert_equal '4 Privet Drive, Little Whinging, Surrey, England, Great Britain', dotloop_loop.name
      assert_equal 'SOLD', dotloop_loop.status
      assert_equal 'PURCHASE_OFFER', dotloop_loop.transaction_type
      assert_equal 5, dotloop_loop.total_task_count
      assert_equal 3, dotloop_loop.completed_task_count
      assert_equal '2017-05-30T21:42:17Z', dotloop_loop.updated
      assert_equal '2017-05-17T01:18:37Z', dotloop_loop.created
      assert_equal 'https://www.dootloop.com/m/loop?viewId=34301', dotloop_loop.loop_url
    end

  end

  class Create < Minitest::Test

    def test_returns_a_newly_created_loop
      stub_request(:post, "https://api-gateway.dotloop.com/public/v2/profile/42/loop").
        to_return(body: api_fixture('loop/create'), status: 201)

      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopResource.new(connection: connection)

      dotloop_model = Dothoop::Loop.new(
        name: '12 Grimmauld Place, Islington, London, England',
        status: 'PRE_LISTING',
        transaction_type: 'LISTING_FOR_SALE'
      )
      dotloop_loop = resource.create(dotloop_model, profile_id: 42)

      assert_instance_of Dothoop::Loop, dotloop_loop
      assert_equal 34401, dotloop_loop.id
      assert_equal '12 Grimmauld Place, Islington, London, England', dotloop_loop.name
      assert_equal 'PRE_LISTING', dotloop_loop.status
      assert_equal 'LISTING_FOR_SALE', dotloop_loop.transaction_type
      assert_equal 42, dotloop_loop.profile_id
      assert_equal 42, dotloop_loop.owner_profile_id
      assert_equal 0, dotloop_loop.total_task_count
      assert_equal 0, dotloop_loop.completed_task_count
      assert_equal '2018-10-06T23:56:40Z', dotloop_loop.updated
      assert_equal '2018-10-06T23:56:40Z', dotloop_loop.created
      assert_equal 'https://www.dotloop.com/m/loop?viewId=34401', dotloop_loop.loop_url
    end

  end

  class Patch < Minitest::Test

    def test_returns_an_updated_loop
      stub_request(:patch, "https://api-gateway.dotloop.com/public/v2/profile/42/loop/34301").
        to_return(body: api_fixture('loop/34301'))

      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopResource.new(connection: connection)

      dotloop_model = Dothoop::Loop.new(status: 'SOLD')
      dotloop_loop = resource.patch(dotloop_model, profile_id: 42, loop_id: 34301)

      assert_instance_of Dothoop::Loop, dotloop_loop
      assert_equal 34301, dotloop_loop.id
      assert_equal '4 Privet Drive, Little Whinging, Surrey, England, Great Britain', dotloop_loop.name
      assert_equal 'SOLD', dotloop_loop.status
      assert_equal 'PURCHASE_OFFER', dotloop_loop.transaction_type
      assert_equal 5, dotloop_loop.total_task_count
      assert_equal 3, dotloop_loop.completed_task_count
      assert_equal '2017-05-30T21:42:17Z', dotloop_loop.updated
      assert_equal '2017-05-17T01:18:37Z', dotloop_loop.created
      assert_equal 'https://www.dootloop.com/m/loop?viewId=34301', dotloop_loop.loop_url
    end

  end

end
