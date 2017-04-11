# S2Cells

Simple S2 Cells for Ruby.

The main use (at the time of this writing) is to map Lat Long to S2 Cells in different levels.

The code was initially copied from another lib in Ruby (https://github.com/nabeelamjad/poke-api), but we are moving the code forward as we work on it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 's2_cells'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install s2_cells

## Usage

Basic usage:

```ruby
S2LatLon.new(-23.54719302, -46.55451921).to_s2_id(12)
# => -7724132475764473856
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/s2_cells. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

