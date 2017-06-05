module Dothoop
  class Participant < BaseModel
    attribute :id
    attribute :full_name
    attribute :email
    attribute :role
  end
end

# {
#   "fullName": "Sean Seller",
#   "email": "sean.seller@yahoo.com",
#   "role": "SELLER"
# }
