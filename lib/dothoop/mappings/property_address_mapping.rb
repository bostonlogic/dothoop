module Dothoop
  class PropertyAddressMapping
    include Kartograph::DSL

    kartograph do
      mapping PropertyAddress

      scoped :read, :patch do
        property :country, key: 'Country'
        property :street_number, key: 'Street Number'
        property :street_name, key: 'Street Name'
        property :unit_number, key: 'Unit Number'
        property :city, key: 'City'
        property :state, key: 'State/Prov'
        property :zip_code, key: 'Zip/Postal Code'
        property :county, key: 'County'
        property :mls_number, key: 'MLS Number'
        property :tax_id, key: 'Parcel/Tax ID'
      end

    end
  end
end
