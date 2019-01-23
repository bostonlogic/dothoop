module Dothoop
  class LoopMapping
    include Kartograph::DSL

    kartograph do
      mapping Loop
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :profile_id, key: 'profileId'
        property :owner_profile_id, key: 'ownerProfileId'
        property :name
        property :status
        property :transaction_type, key: 'transactionType'
        property :total_task_count, key: 'totalTaskCount'
        property :completed_task_count, key: 'completedTaskCount'
        property :updated
        property :created
        property :loop_url, key: 'loopUrl'
      end

      scoped :create do
        property :name
        property :status
        property :transaction_type, key: 'transactionType'
      end

    end
  end
end
