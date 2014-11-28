# Capybara::Ember

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
group :test do
  gem 'capybara-ember', require: false
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-ember

## Usage

Require `capybara/ember` in your test file, for example in `rails_helper.rb` or `spec_helper.rb` to set up Capybara's Poltergeist driver and make it aware of the [Ember Run Loop](http://emberjs.com/guides/understanding-ember/run-loop/). This forces Poltergeist to wait with `click` until the Ember Run Loop has finished, so that the clicks will be effective.

No modification to your existing tests are necessary.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capybara-ember/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
