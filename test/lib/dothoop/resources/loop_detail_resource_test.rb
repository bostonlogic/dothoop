require 'test_helper'

class Dothoop::LoopDetailResourceTest < Minitest::Test

  class Info < Minitest::Test

    def setup
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/1/loop/1/detail").
        to_return(body: api_fixture('loop_detail/info'))
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/profile/1/loop/1234/detail").
        to_return(body: api_fixture('loop_detail/1234'))
    end

    def test_returns_the_details_of_a_loop
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      loop_details = resource.info(profile_id: 1, loop_id: 1)

      assert_instance_of Dothoop::LoopDetail, loop_details
      assert_instance_of Dothoop::PropertyAddress, loop_details.property_address
      assert_instance_of Dothoop::Financials, loop_details.financials
      assert_instance_of Dothoop::ContractDates, loop_details.contract_dates
      assert_instance_of Dothoop::OfferDates, loop_details.offer_dates
      assert_instance_of Dothoop::ContractInfo, loop_details.contract_info
      assert_instance_of Dothoop::Referral, loop_details.referral
      assert_instance_of Dothoop::ListingInformation, loop_details.listing_information
      assert_instance_of Dothoop::GeographicDescription, loop_details.geographic_description
      assert_instance_of Dothoop::Property, loop_details.property
    end

    def test_returns_accurate_property_details
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      property_address = resource.info(profile_id: 1, loop_id: 1234).property_address
      
      assert_equal "Equestria", property_address.country
      assert_equal "629", property_address.street_number
      assert_equal "Apple Orchard Ln", property_address.street_name
      assert_equal "6", property_address.unit_number
      assert_equal "Ponyville", property_address.city
      assert_equal "HAYBALE-1", property_address.zip_code
      assert_equal "Ponyville", property_address.county
      assert_equal "EQ1234", property_address.mls_number
      assert_equal "012334567", property_address.tax_id
    end

    def test_returns_accurate_financials
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      financials = resource.info(profile_id: 1, loop_id: 1234).financials

      assert_equal '650,000', financials.purchase_or_sale_price
      assert_equal '6%', financials.sale_commission_rate
      assert_equal '3%', financials.buy_side_commission_split_percentage
      assert_equal '3%', financials.sell_side_commission_split_percentage
      assert_nil financials.sale_commission_total
      assert_equal '25,000', financials.earnest_money_amount
      assert_equal 'Ponyville Realty Group', financials.earnest_money_held_by
      assert_nil financials.buy_side_commission_split_amount
      assert_nil financials.sell_side_commission_split_amount
    end

    def test_returns_accurate_contract_dates
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      contract_dates = resource.info(profile_id: 1, loop_id: 1234).contract_dates

      assert_equal '06/15/2016', contract_dates.contract_agreement_date
      assert_equal '08/16/2016', contract_dates.closing_date
    end

    def test_returns_accurate_offer_dates
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      offer_dates = resource.info(profile_id: 1, loop_id: 1234).offer_dates

      assert_equal '06/17/2016', offer_dates.inspection_date
      assert_equal '06/15/2016', offer_dates.offer_date
    end

    def test_returns_accurate_contract_info
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      contract_info = resource.info(profile_id: 1, loop_id: 1234).contract_info

      assert_nil contract_info.transaction_number
      assert_nil contract_info.contract_class
      assert_equal 'commercial', contract_info.contract_type
    end

    def test_returns_accurate_referral
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      referral = resource.info(profile_id: 1, loop_id: 1234).referral

      assert_equal '1.5%', referral.referral_percentage
      assert_equal 'Rarity', referral.referral_source
    end

    def test_returns_accurate_listing_information
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      listing_information = resource.info(profile_id: 1, loop_id: 1234).listing_information

      assert_equal '12/06/2016', listing_information.expiration_date
      assert_equal '06/06/2016', listing_information.Listing_date
      assert_equal '735,000.00', listing_information.original_price
      assert_equal '735,000.00', listing_information.current_price
      assert_nil listing_information.first_mortgage_balance
      assert_nil listing_information.second_mortgage_balance
      assert_nil listing_information.other_liens
      assert_nil listing_information.other_liens_description
      assert_nil listing_information.homeowners_association
      assert_nil listing_information.homeowner_association_dues
      assert_nil listing_information.total_encumbrances
      assert_nil listing_information.property_includes
      assert_nil listing_information.property_excludes
      assert_nil listing_information.remarks
    end

    def test_returns_accurate_geographic_description
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      geographic_description = resource.info(profile_id: 1, loop_id: 1234).geographic_description

      assert_nil geographic_description.mls_area
      assert_equal 'LOVELY BUILDING IN AWESOME LOCATION WITH ALL THE FIXINGS - 1234', geographic_description.legal_description
      assert_nil geographic_description.map_grid
      assert_nil geographic_description.subdivision
      assert_nil geographic_description.lot
      assert_nil geographic_description.deed_page
      assert_nil geographic_description.deed_book
      assert_nil geographic_description.section
      assert_nil geographic_description.addition
      assert_nil geographic_description.block
    end

    def test_returns_accurate_property
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::LoopDetailResource.new(connection: connection)

      property = resource.info(profile_id: 1, loop_id: 1234).property

      assert_equal '1974', property.year_built
      assert_equal 'Condo', property.type
      assert_equal '2', property.bedrooms
      assert_equal '2', property.bathrooms
      assert_equal '1284', property.square_footage
      assert_equal '0', property.lot_size
      assert_nil property.school_district
    end

  end

  class Patch < Minitest::Test
    def test_returns_the_details_of_a_loop
      skip('Need to decided whether and what to test here')
    end
  end

end
