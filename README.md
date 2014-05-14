# Downr 
[![Build Status](https://travis-ci.org/davidrivera/Downr.svg?branch=master)](https://travis-ci.org/davidrivera/Downr) [![Code Climate](https://codeclimate.com/github/davidrivera/Downr.png)](https://codeclimate.com/github/davidrivera/Downr) [![Gem Version](https://badge.fury.io/rb/downr.svg)](http://badge.fury.io/rb/downr) [![Dependency Status](https://gemnasium.com/davidrivera/Downr.svg)](https://gemnasium.com/davidrivera/Downr)

Downr is an easy to use rails wrapper around a couple of different notible gems
* [Redcarpet](https://github.com/vmg/redcarpet)
* [Pygmentize](https://github.com/djanowski/pygmentize)
* [Emoji](https://github.com/jsw0528/rails_emoji)

## So why use Downr
Good question, the best I can come up with is that if you're working on a rails project, this library provides a really easy way to add markdown parsing to it quickly with all the nice Github Flavored Markdown you know and love. It also allows you to edit all of the base options for Redcarpet through initializers, and finally gives you a nice view helper.

## Installation

Add this line to your application's Gemfile:

    gem 'downr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install downr

after run 
    
    $ rails g downr:install

this will create an initializer in 
    
    config/initializer/downr.rb

## Usage

Crack open the initializer `config/initializers/downr.rb` and add/change any configuration options for the markdown rendering process. These options are passed straight to Redcarpet so you can head over [there](https://github.com/vmg/redcarpet) to check out all of the possible options.

### View Helpers

I know what those are!

```haml
render_markdown "# Hello World"
```

### Or use directly

```ruby
Downr::Markdown.render("# Hello World")
```

## Tests

Tests are run through the wonderful RSpec so just clone the library run `bundle` then `rake`

## Contributing

1. Fork it ( http://github.com/davidrivera/downr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT
