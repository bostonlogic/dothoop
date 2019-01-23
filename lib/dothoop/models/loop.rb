module Dothoop
  class Loop < BaseModel
    attribute :id
    attribute :profile_id
    attribute :owner_profile_id
    attribute :name
    attribute :status
    attribute :transaction_type
    attribute :total_task_count
    attribute :completed_task_count
    attribute :updated
    attribute :created
    attribute :loop_url
  end
end
