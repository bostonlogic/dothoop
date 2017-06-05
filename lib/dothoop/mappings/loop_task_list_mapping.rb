module Dothoop
  class LoopTaskListMapping
    include Kartograph::DSL

    kartograph do
      mapping TaskList
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :name
      end
    end
  end
end
