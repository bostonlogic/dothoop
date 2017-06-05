module Dothoop
  class Financials < BaseModel
    attribute :purchase_or_sale_price #Purchase/Sale Price
    attribute :sale_commission_rate #Sale Commission Rate
    attribute :buy_side_commission_split_percentage #Sale Commission Split % - Buy Side
    attribute :sell_side_commission_split_percentage #Sale Commission Split % - Sell Side
    attribute :sale_commission_total #Sale Commission Total
    attribute :earnest_money_amount #Earnest Money Amount
    attribute :earnest_money_held_by #Earnest Money Held By
    attribute :buy_side_commission_split_amount #Sale Commission Split $ - Buy Side
    attribute :sell_side_commission_split_amount #Sale Commission Split $ - Sell Side
  end
end
