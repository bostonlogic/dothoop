require 'test_helper'

class Dothoop::AccountResourceTest < Minitest::Test

  class Info < Minitest::Test
    def test_accounts_resource
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/account").to_return(body: api_fixture('account/info'))
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::AccountResource.new(connection: connection)
      account_information = resource.info

      assert_instance_of Dothoop::Account, account_information
      assert_equal 1, account_information.id
      assert_equal 'Albus', account_information.first_name
      assert_equal 'Dumbledore', account_information.last_name
      assert_equal 'albus.dumbledore@hogwarts.edu', account_information.email
      assert_equal 7, account_information.default_profile_id
    end
  end

end
