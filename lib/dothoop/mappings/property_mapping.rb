module Dothoop
  class PropertyMapping
    include Kartograph::DSL

    kartograph do
      mapping Property

      scoped :read, :patch do
        property :year_built, key: 'Year Built'
        property :bedrooms, key: 'Bedrooms'
        property :square_footage, key: 'Square Footage'
        property :school_district, key: 'School District'
        property :type, key: 'Type'
        property :bathrooms, key: 'Bathrooms'
        property :lot_size, key: 'Lot Size'
      end

    end
  end
end
