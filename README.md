# RailsUtilities

This gem contains functions which either add properties to Ruby objects themselves or simply act as utility functions. This gem is under active development and more functions will soon be added to the gem.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_utilities'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_utilities

## Methods and Usage

This gem extends Ruby datatypes as follows:

### Objects

Objects have been extended with the following methods:

**true?**

Return type: Boolean <br/>
Method to check if the value of an object is set to true either in a string or as a boolean. It returns true if the object being checked is equal to "true" or true. <br/>
Usage: <br/>
someObject.true?

**false?**

Return type: Boolean <br/>
Method to check if the value of an object is set to false either in a string or as a boolean. It returns true if the object being checked is equal to "false" or false. <br/>
Usage: <br/>
someObject.false?

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Bizongo/rails_utilities.
