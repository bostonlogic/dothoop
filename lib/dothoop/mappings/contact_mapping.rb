module Dothoop
  class ContactMapping
    include Kartograph::DSL

    kartograph do
      mapping Contact
      root_key singular: 'data', plural: 'data', scopes: [:read]

      scoped :read do
        property :id
        property :first_name, key: 'firstName'
        property :last_name, key: 'lastName'
        property :email
        property :home
        property :office
        property :fax
        property :address
        property :city
        property :zipCode
        property :state
        property :country
        property :updated
      end

      scoped :create do
        property :first_name, key: 'firstName'
        property :last_name, key: 'lastName'
        property :email
        property :home
        property :office
        property :fax
        property :address
        property :city
        property :zipCode
        property :state
        property :country
      end

    end
  end
end
