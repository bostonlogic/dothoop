module Dothoop
  class LoopDetailMapping
    include Kartograph::DSL

    kartograph do
      mapping LoopDetail
      root_key singular: 'data', scopes: [:read]

      scoped :read, :patch do
        property :property_address, key: 'Property Address',  include: PropertyAddressMapping
        property :financials, key: 'Financials',  include: FinancialsMapping
        property :contract_dates, key: 'Contract Dates',  include: ContractDatesMapping
        property :offer_dates, key: 'Offer Dates',  include: OfferDatesMapping
        property :contract_info, key: 'Contract Info',  include: ContractInfoMapping
        property :referral, key: 'Referral',  include: ReferralMapping
        property :listing_information, key: 'Listing Information',  include: ListingInformationMapping
        property :geographic_description, key: 'Geographic Description',  include: GeographicDescriptionMapping
        property :property, key: 'Property',  include: PropertyMapping
      end

    end
  end
end
