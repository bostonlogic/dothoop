# Dothoop

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/dothoop`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dothoop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dothoop

## Usage

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
seller = Dothoop::Participant.new(fullName: "Harry Potter", email: "harry@potermore.com", role: "SELLER")
list_agent = Dothoop::Participant.new(fullName: "Luna Lovegood", email: "luna@potermore.com", role: "LISTING_AGENT")
loop_it = Dothoop::LoopIt.new(name: "4 Privet Drive, Little Whinging, Surrey, England, Great Britain - Harry Potter", transactionType: "LISTING_FOR_SALE", status: "PRE_LISTING", participants: [seller, list_agent])
client.loop_it.create(loop, profile_id: client.account.info.defaultProfileId) # => Dothoop::LoopIt
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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/dothoop. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
