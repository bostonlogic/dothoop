module Dothoop
  class ReferralMapping
    include Kartograph::DSL

    kartograph do
      mapping Referral

      scoped :read, :patch do
        property :referral_percentage, key: 'Referral %'
        property :referral_source, key: 'Referral Source'
      end

    end
  end
end
