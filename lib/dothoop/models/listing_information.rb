module Dothoop
  class ListingInformation < BaseModel
    attribute :expiration_date #'Expiration Date'
    attribute :Listing_date #'Listing Date'
    attribute :original_price #'Original Price'
    attribute :current_price #'Current Price'
    attribute :first_mortgage_balance #'1st Mortgage Balance'
    attribute :second_mortgage_balance #'2nd Mortgage Balance'
    attribute :other_liens #'Other Liens'
    attribute :other_liens_description #'Description of Other Liens'
    attribute :homeowners_association #'Homeowner's Association'
    attribute :homeowner_association_dues #'Homeowner's Association Dues'
    attribute :total_encumbrances #'Total Encumbrances'
    attribute :property_includes #'Property Includes'
    attribute :property_excludes #'Property Excludes'
    attribute :remarks #'Remarks'
  end
end
