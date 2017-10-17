require 'test_helper'

class Dothoop::ClientTest < Minitest::Test

  class Initialize < Minitest::Test

    def test_initialize_requires_an_access_token
      assert_raises(ArgumentError) { Dothoop::Client.new }
    end

    def test_initialize_creates_a_dothoop_client_instance
      dothoop_client = Dothoop::Client.new('banana')

      assert_instance_of Dothoop::Client, dothoop_client
    end

    def test_initialize_sets_the_provided_access_token
      dothoop_client = Dothoop::Client.new('banana')

      assert_equal 'banana', dothoop_client.access_token
    end

  end

  class Connection < Minitest::Test

    def test_connection_sets_the_correct_url
      dothoop_client = Dothoop::Client.new('banana')

      assert_equal "https://api-gateway.dotloop.com/", dothoop_client.connection.url_prefix.to_s
    end

    def test_connection_builds_the_correct_headers
      dothoop_client = Dothoop::Client.new('banana')

      assert_equal 'application/json', dothoop_client.connection.headers[:content_type]
      assert_equal 'Bearer banana', dothoop_client.connection.headers[:authorization]
    end

  end

  class MethodMissing < Minitest::Test

    def test_valid_endpoints_succeed
      dothoop_client = Dothoop::Client.new('banana')

      assert dothoop_client.account
    end

    def test_invalid_endpoints_raise_method_missing_error
      dothoop_client = Dothoop::Client.new('banana')

      assert_raises(NoMethodError) { dothoop_client.not_a_thing }
    end

  end

end
