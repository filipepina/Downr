# Downr 
[![Build Status](https://travis-ci.org/davidrivera/Downr.svg?branch=master)](https://travis-ci.org/davidrivera/Downr) [![Code Climate](https://codeclimate.com/github/davidrivera/Downr.png)](https://codeclimate.com/github/davidrivera/Downr) [![Gem Version](https://badge.fury.io/rb/downr.svg)](http://badge.fury.io/rb/downr) [![Dependency Status](https://gemnasium.com/davidrivera/Downr.svg)](https://gemnasium.com/davidrivera/Downr)

Simple Rails gem wrapper for RedCarpet, Pygmentize, and Emoji giving you a fun cool markdown renderer with all the fixin's 

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

Crack open the initializer `config/initializers/downr.rb` and add/change any configuration options for the markdown rendering process. These options are passed straight to RedCarpet so you can head over there to check out all of the possible options.

### View Helpers

`render_markdown "# Hello World"`

### Or use directly

`Downr::Markdown.render("# Hello World")`

## Tests

Just fork and run `rake`

## Contributing

1. Fork it ( http://github.com/davidrivera/downr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

MIT
