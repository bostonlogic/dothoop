module Dothoop
  class ListingInformationMapping
    include Kartograph::DSL

    kartograph do
      mapping ListingInformation

      scoped :read, :patch do
        property :expiration_date, key: "Expiration Date"
        property :Listing_date, key: "Listing Date"
        property :original_price, key: "Original Price"
        property :current_price, key: "Current Price"
        property :first_mortgage_balance, key: "1st Mortgage Balance"
        property :second_mortgage_balance, key: "2nd Mortgage Balance"
        property :other_liens, key: "Other Liens"
        property :other_liens_description, key: "Description of Other Liens"
        property :homeowners_association, key: "Homeowner's Association"
        property :homeowner_association_dues, key: "Homeowner's Association Dues"
        property :total_encumbrances, key: "Total Encumbrances"
        property :property_includes, key: "Property Includes"
        property :property_excludes, key: "Property Excludes"
        property :remarks, key: "Remarks"
      end

    end
  end
end
