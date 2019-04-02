# Dothoop #

[![Build Status](https://travis-ci.org/bostonlogic/dothoop.svg?branch=master)](https://travis-ci.org/bostonlogic/dothoop)

Ruby wrapper around the newer [Dotloop Public Api](https://dotloop.github.io/public-api/) (currently version 2). To use this gem, you need to register your application with Dotloop and follow their instructions to generate an OAuth access token from Dotloop.

## Installation ##

Add this line to your application's Gemfile:

```ruby
gem 'dothoop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dothoop

## Usage ##

For all the endpoints, you should first create an instance of the client, passing in your oauth access token:

```ruby
client = Dothoop::Client.new('your_oauth_access_token')
```

### Account ###

```ruby
account_information = client.account.info #=> Dothoop::Account
```

### Loop-It ###

```ruby
seller = Dothoop::Participant.new(full_name: "Harry Potter", email: "harry@potermore.com", role: "SELLER")
list_agent = Dothoop::Participant.new(full_name: "Luna Lovegood", email: "luna@pottermore.com", role: "LISTING_AGENT")
loop_it = Dothoop::LoopIt.new(name: "4 Privet Drive, Little Whinging, Surrey, England, Great Britain - Harry Potter", transaction_type: "LISTING_FOR_SALE", status: "PRE_LISTING", participants: [seller, list_agent])
client.loop_it.create(loop_it, profile_id: client.account.info.default_profile_id) # => Dothoop::LoopIt
```

### Profile ###
```ruby
client.profiles.all #=> [Dothoop::Profile, Dothoop::Profile, ...]

client.profiles.find(profile_id: 1234) #=> Dothoop::Profile

profile = Dothoop::Profile.new(name: "Harry Protter", company: "Dumbledore's Army", phone: "1234567890", fax: "2345678901", address: "4 Privet Drive", city: "Little Whinging", state: "NY", zipcode: "10005")
client.profiles.create(profile) #=> Dothoop::Profile

name_update = Dothoop::Profile.new(name: "Harry Potter")
client.profiles.patch(name_update, profile_id: 1234) #=> Dothoop::Profile
```

### Loop Summaries ###
Fetching all loops will return a paginated resource that can then be iterated over to yield loops. Both `#each` and `#map` can be used to do this.

Fetch all the loops in default batch sizes (20):
```ruby
dotloop_loops = client.loops.all(profile_id: 1234) #=> [Dothoop::PaginatedResource]
dotloop_loops.map{|dotloop_loop| dotloop_loop} #=> [Dothoop::Loop, Dothoop::Loop, ...]
```
You can set the number of loops per batch. The max allowed by Dotloop is 100:
```ruby
dotloop_loops = client.loops.all(profile_id: 1234, batch_size: 100) #=> [Dothoop::PaginatedResource]
dotloop_loops.map{|dotloop_loop| dotloop_loop} #=> [Dothoop::Loop, Dothoop::Loop...up to 100]
```
You can limit how many batches you want returned:
```ruby
dotloop_loops = client.loops.all(profile_id: 1234, batch_size: 1, single_batch: true) #=> [Dothoop::PaginatedResource]
dotloop_loops.map{|dotloop_loop| dotloop_loop} #=> [Dothoop::Loop]
```

Fetching a single loop can requires the loops id:
```ruby
dotloop_loop = client.loops.find(profile_id: 1234, loop_id: 5678) #=> Dothoop::Loop
```

The loop-it endpoint is preferred, however you can create loops via a `loops#create`. The resulting loop is returned on success:
```ruby
loop_data = Dothoop::Loop.new(name: "one loop to rue them all", status: 'PRE_LISTING', transactionType: 'LISTING_FOR_SALE')
dotloop_loop = client.loops.create(loop_data, profile_id: 1234) #=> Dothoop::Loop
```

To update a loop, just pass the `Dothoop::Loop` instance with the attributes to update defined to `loops#patch`. The updated loop is returned on success:
```ruby
update_name = Dothoop::Loop.new(name: "One Loop To Rule Them All")
dotloop_loop = client.loops.patch(update_name, profile_id: 1234, loop_id: 5678) #=> Dothoop::Loop
```

### Loop Details ###
```ruby
client.loop_details.info(profile_id: 1234, loop_id: 5678) #=> Dothoop::LoopDetail

property_update = Dothoop::Property.new(year_built: "1881", bedrooms: "5", square_footage: "choranaptyxic", school_district: "Hogwarts", type: "Magical", bathtrooms: "5", lot_size: "7")
update_details = Dothoop::LoopDetail.new(property: property_update)
client.loop_details.patch(update_details, profile_id: 1234, loop_id: 5678) #=> Dothoop::LoopDetail
```

### Loop Participants ###
```ruby
client.loop_participants.all(profile_id: 1234, loop_id: 5678) #=> [Dothoop::Participant, Dothoop::Participant, ...]

client.loop_participants.find(profile_id: 1234, loop_id: 5678, participant_id: 91011) #=> Dothoop::Participant

participant = Dothoop::Participant.new(email: "bellatrix@pottermore.com", name: "Bellatrix LeStrange", role: "LANDLORD")
client.loop_participants.create(participant, profile_id: 1234, loop_id: 5678) #=> Dothoop::Participant

update_participant = Dothoop::Participant.new(email: "harry@pottermore.com")
client.loop_participants.patch(update_participant, profile_id: 1234, loop_id: 5678, participant_id: 91011) #=> Dothoop::Participant

 client.loop_participants.delete(profile_id: 1234, loop_id: 5678, participant_id: 91011) #=> true
```

### Loop Tasks ###

#### Task Lists ####

```ruby
client.loop_task_lists.all(profile_id: 1234, loop_id: 5678) #=> [Dothoop::TaskList, Dothoop::TaskList, ...]

client.loop_task_lists.find(profile_id: 1234, loop_id: 5678, task_list_id: 12321) #=> Dothoop::TaskList
```

#### Task List Items ####
```ruby
client.loop_task_list_items.all(profile_id: 1234, loop_id: 5678, task_list_id: 12321) #=> [Dothoop::LoopTaskListItem, Dothoop::LoopTaskListItem, ...]

client.loop_task_list_items.find(profile_id: 1234, loop_id: 5678, task_list_id: 12321, task_list_item_id: 18181) #=> Dothoop::LoopTaskListItem
```

### Contacts ###
```ruby
client.contacts.all #=> [Dothoop::Contact, Dothoop::Contact, ...]

client.contacts.find(contact_id: 43) #=> Dothoop::Contact

contact = Dothoop::Contact.new(first_name: "Hermione", last_name: "Granger", email: "hermione@hogwarts.com", home: "1234567890")
client.contacts.create(contact) #=> Dothoop::Contact

update_contact = Dothoop::Contact.new(last_name: "weasley", email: "hermione@pottermore.com")
client.contacts.patch(update_contact, contact_id: 43) #=> Dothoop::Contact

client.contacts.delete(contact_id: 44) #=> true
```

### Loop Template ###
```ruby
client.loop_templates.all(profile_id: 1234) #=> [Dothoop::LoopTemplate, Dothoop::LoopTemplate, ...]

client.loop_templates.find(profile_id: 1234, loop_template_id: 7) #=> Dothoop::LoopTemplate
```

## Development ##

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## TO DO ##
Write tests

## Contributing ##

Bug reports and pull requests are welcome on GitHub at https://github.com/bostonlogic/dothoop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License ##

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
