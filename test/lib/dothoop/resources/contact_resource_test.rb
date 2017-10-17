require 'test_helper'

class Dothoop::ContactResourceTest < Minitest::Test

  class All < Minitest::Test
    def test_returns_an_array_of_contacts
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/contact").to_return(body: api_fixture('contact/all'))
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::ContactResource.new(connection: connection)
      contacts = resource.all

      assert_instance_of Array, contacts
      contacts.each{ |contact| assert_instance_of Dothoop::Contact, contact }
    end
  end

  class Find < Minitest::Test
    def test_returns_a_contact
      stub_request(:get, "https://api-gateway.dotloop.com/public/v2/contact/1").to_return(body: api_fixture('contact/1'))
      connection = Dothoop::Client.new('access_token').connection
      resource = Dothoop::ContactResource.new(connection: connection)
      contact = resource.find(contact_id: 1)

      assert_instance_of Dothoop::Contact, contact
      assert_equal 1, contact.id
      assert_equal 'Harry', contact.first_name
      assert_equal 'Potter', contact.last_name
      assert_equal 'harry.potter@hogwarts.edu', contact.email
      assert_equal '(415) 8936 331', contact.home
      assert_equal '(415) 1213 651', contact.office
      assert_equal '(415) 8655 737', contact.fax
      assert_equal '2100 Waterview Dr', contact.address
      assert_equal 'San Francisco', contact.city
      assert_equal '94114', contact.zipCode
      assert_equal 'CA', contact.state
      assert_equal 'US', contact.country
      assert_equal '2017-04-20T03:48:30Z', contact.updated
    end
  end

  class Create < Minitest::Test
    def test_creates_and_returns_a_contact
      skip('Need to decided whether and what to test here')
    end
  end

  class Patch < Minitest::Test
    def test_updates_and_returns_a_contact
      skip('Need to decided whether and what to test here')
    end
  end

  class Destroy < Minitest::Test
    def test_returns_true_for_a_destroy_response
      skip('Need to decided whether and what to test here')
    end
  end

end

# GET /contact[?batch_size=<batch_size>&batch_number=<batch_number>&updated_min=<updated_min>]

# Response 200
#
# {
#   "meta": {
#     "total": 10
#   },
#   "data": [
#     {
#       "id": 3603862,
#       "firstName": "Brian",
#       "lastName": "Erwin",
#       "email": "brianerwin@newkyhome.com",
#       "home": "(415) 8936 332",
#       "office": "(415) 1213 656",
#       "fax": "(415) 8655 686",
#       "address": "2100 Waterview Dr",
#       "city": "San Francisco",
#       "zipCode": "94114",
#       "state": "CA",
#       "country": "US",
#       "updated": "2017-04-20T03:48:30Z"
#     },
#     ...
#   ]
# }


# GET /contact/:contact_id

# Response 200
#
# {
#   "data": {
#     "id": 3603862,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "home": "(415) 8936 332",
#     "office": "(415) 1213 656",
#     "fax": "(415) 8655 686",
#     "address": "2100 Waterview Dr",
#     "city": "San Francisco",
#     "zipCode": "94114",
#     "state": "CA",
#     "country": "US",
#     "updated": "2017-04-20T03:48:30Z"
#   }
# }


# POST /contact
# {
#   "firstName": "Brian",
#   "lastName": "Erwin",
#   "email": "brianerwin@newkyhome.com",
#   "home": "(415) 8936 332",
#   "office": "(415) 1213 656",
#   "fax": "(415) 8655 686",
#   "address": "2100 Waterview Dr",
#   "city": "San Francisco",
#   "zipCode": "94114",
#   "state": "CA",
#   "country": "US"
# }

# Response 201
#
# {
#   "data": {
#     "id": 3603862,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "home": "(415) 8936 332",
#     "office": "(415) 1213 656",
#     "fax": "(415) 8655 686",
#     "address": "2100 Waterview Dr",
#     "city": "San Francisco",
#     "zipCode": "94114",
#     "state": "CA",
#     "country": "US",
#     "updated": "2017-04-20T03:48:30Z"
#   }
# }


# PATCH /contact/:contact_id
# {
#   "home": "(415) 888 8888"
# }

# Response 200
#
# {
#   "data": {
#     "id": 3603862,
#     "firstName": "Brian",
#     "lastName": "Erwin",
#     "email": "brianerwin@newkyhome.com",
#     "home": "(415) 888 8888",
#     "office": "(415) 1213 656",
#     "fax": "(415) 8655 686",
#     "address": "2100 Waterview Dr",
#     "city": "San Francisco",
#     "zipCode": "94114",
#     "state": "CA",
#     "country": "US",
#     "updated": "2017-04-20T03:48:30Z"
#   }
# }


# DELETE /contact/:contact_id

# Response 204
