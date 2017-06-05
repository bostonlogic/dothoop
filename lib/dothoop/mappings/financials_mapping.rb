module Dothoop
  class FinancialsMapping
    include Kartograph::DSL

    kartograph do
      mapping Financials

      scoped :read, :patch do
        property :purchase_or_sale_price, key: 'Purchase/Sale Price'
        property :sale_commission_rate, key: 'Sale Commission Rate'
        property :buy_side_commission_split_percentage, key: 'Sale Commission Split % - Buy Side'
        property :sell_side_commission_split_percentage, key: 'Sale Commission Split % - Sell Side'
        property :sale_commission_total, key: 'Sale Commission Total'
        property :earnest_money_amount, key: 'Earnest Money Amount'
        property :earnest_money_held_by, key: 'Earnest Money Held By'
        property :buy_side_commission_split_amount, key: 'Sale Commission Split $ - Buy Side'
        property :sell_side_commission_split_amount, key: 'Sale Commission Split $ - Sell Side'
      end

    end
  end
end
