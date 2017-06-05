module Dothoop
  class LoopTaskListItemMapping
    include Kartograph::DSL

    kartograph do
      mapping LoopTaskListItem
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :name
        property :due
        property :completed
      end
    end
  end
end
