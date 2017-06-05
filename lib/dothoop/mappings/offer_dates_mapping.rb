module Dothoop
  class OfferDatesMapping
    include Kartograph::DSL

    kartograph do
      mapping OfferDates

      scoped :read, :patch do
        property :inspection_date, key: 'Inspection Date'
        property :offer_date, key: 'Offer Date'
        property :offer_expiration_date, key: 'Offer Expiration Date'
        property :occupancy_date, key: 'Occupancy Date'
        property :offer_date, key: 'Offer Date'
      end

    end
  end
end
