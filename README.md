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
`someObject.true?`

**false?**

Return type: Boolean <br/>
Method to check if the value of an object is set to false either in a string or as a boolean. It returns true if the object being checked is equal to "false" or false. <br/>
Usage: <br/>
`someObject.false?`

### Strings

Strings have been extended with the following methods:

**is_i?**

Return type: Boolean <br/>
Description: Method that returns true if a string contains only numbers and false otherwise. <br/>
Usage: <br/>
`"123".is_i? # returns true` <br/>
`"12abc".is_i? # returns false`

**is_email?**

Return type: Boolean <br/>
Description: Method that returns true or false depending on whether a string contains a valid email address or not. <br/>
Usage: <br/>
`"abc@bizongo.in".is_email? # returns true` <br/>
`"This is some text".is_email? # returns false`

**prepend_a_or_an**

Return type: String <br/>
Description: Method that returns a new string with "a" or "an" prepended to the calling string as per appropriate grammar rules. It does not change the original string. <br/>
Usage: <br/>
`"apple".prepend_a_or_an # Returns a new string "an apple"` <br/>
`"bat".prepend_a_or_an # Returns a new string "a bat"`

**strip_country_code**

Return type: String <br/>
Description: Method that returns a new string with "+91" removed from the calling string if the string that this method is called on starts with "+91" (India's country code for telephone numbers). It does not change the original string. <br/>
Usage: <br/>
`"+919999999999".strip_country_code # Returns a new string "9999999999"`

**displayed_with_exact_precision**

Return type: String<br/>
Description: Method that returns a new string with n number of digit after decimal.Default this method return 2 digit after decimal.<br/> 
Usage: <br/>
2.0.displayed_with_exact_precision # Returns a new string "2.00"
2.3334.displayed_with_exact_precision # Returns a new string "2.33"
2.333434324.displayed_with_exact_precision(4) # Returns a new string "2.3334"


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Bizongo/rails_utilities.
