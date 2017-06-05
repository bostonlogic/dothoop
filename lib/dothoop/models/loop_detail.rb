module Dothoop
  class LoopDetail < BaseModel
    attribute :property_address, PropertyAddress
    attribute :financials, Financials
    attribute :contract_dates, ContractDates
    attribute :offer_dates, OfferDates
    attribute :contract_info, ContractInfo
    attribute :referral, Referral
    attribute :listing_information, ListingInformation
    attribute :geographic_description, GeographicDescription
    attribute :property, Property
  end
end
