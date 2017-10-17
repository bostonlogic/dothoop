require 'test_helper'

class Dothoop::LoopDetailResourceTest < Minitest::Test

  class Info < Minitest::Test
    def test_returns_the_details_of_a_loop
      skip('Need to update fixuture')
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/1/loop/1/detail").to_return(body: api_fixture('loop_detail/info'))
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)
      loop_details = resource.info(profile_id: 1, loop_id: 1)

      assert_instance_of Dothoop::LoopDetail, loop_details
      assert_instance_of Dothoop::PropertyAddress, loop_details.property_address
      assert_instance_of Dothoop::Financials, loop_details.financials
      assert_instance_of Dothoop::ContractDates, loop_details.contract_dates
      assert_instance_of Dothoop::OfferDates, loop_details.fer_dates
      assert_instance_of Dothoop::ContractInfo, loop_details.contract_info
      assert_instance_of Dothoop::Referral, loop_details.referral
      assert_instance_of Dothoop::ListingInformation, loop_details.listing_information
      assert_instance_of Dothoop::GeographicDescription, loop_details.geographic_description
      assert_instance_of Dothoop::Property, loop_details.property
    end
  end

  class Patch < Minitest::Test
    def test_returns_the_details_of_a_loop
      skip('Need to decided whether and what to test here')
    end
  end

end

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
