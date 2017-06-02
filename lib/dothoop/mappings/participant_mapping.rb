module Dothoop
  class ParticipantMapping
    include Kartograph::DSL

    kartograph do
      mapping Participant

      scoped :create do
        property :fullName
        property :email
        property :role
      end

    end
  end
end

# {
#   "fullName": "Sean Seller",
#   "email": "sean.seller@yahoo.com",
#   "role": "SELLER"
# }
