module Dothoop
  class ContractDatesMapping
    include Kartograph::DSL

    kartograph do
      mapping ContractDates

      scoped :read, :patch do
        property :contract_agreement_date, key: 'Contract Agreement Date'
        property :closing_date, key: 'Closing Date'
      end

    end
  end
end
