![build status](https://travis-ci.org/erlend/active_model_serializers_vuetables.svg?branch=master)
# ActiveModel Serializers Vue Tables

The name pretty much says it all. This adapter for
[ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers)
will create JSON compatible with
[Vue Tables](https://github.com/matfish2/vue-tables-2).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'active_model_serializers_vuetables'
```

And then execute:

    $ bundle

Finally add the following line to a file in your `config/initializers` folder:
```ruby
ActiveModelSerializers.config.adapter = :vuetables
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/erlend/active_model_serializers_vuetables. This
project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ActiveModelSerializersVuetables project’s codebases,
issue trackers, chat rooms and mailing lists is expected to follow the
[code of conduct](https://github.com/erlend/active_model_serializers_vuetables/blob/master/CODE_OF_CONDUCT.md).
