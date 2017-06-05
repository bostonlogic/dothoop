module Dothoop
  class ContractInfoMapping
    include Kartograph::DSL

    kartograph do
      mapping ContractInfo

      scoped :read, :patch do
        property :transaction_number, key: 'Transaction Number'
        property :class, key: 'Class'
        property :type, key: 'Type'
      end

    end
  end
end
