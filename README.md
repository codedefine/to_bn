# to_bn

Ruby Gem to convert number and date from English to Bengali.

## Installation

Add this line to your application's Gemfile:

    gem 'to_bn'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install to_bn

## Usage

Converting Number/String

    123.to_bn           # => "১২৩"
    123.456.to_bn       # => "১২৩.৪৫৬"
    "123 to 456".to_bn  # => "১২৩ to ৪৫৬"

Converting String (Containing Date)

    "Mon, 09 Sep 2013".to_bn :parse_date => true    # => "সোম, ০৯ সেপ্টেম্বর ২০১৩"
    "Friday".to_bn :parse_date => true              # => "শুক্রবার"
    "Fri".to_bn :parse_date => true                 # => "শুক্র"
    "Boishakh 1432".to_bn :parse_date => true       # => "বৈশাখ ১৪৩২"

Converting Number to Words:

    "1 23".to_bn :in_words => true          # => "এক দুইতিন"
    567123.to_bn :in_words => true          # => "পাঁচ লক্ষ সাতষট্টি হাজার এক শত তেইশ"
    567123.05.to_bn :in_words => true       # => "পাঁচ লক্ষ সাতষট্টি হাজার এক শত তেইশ দশমিক শূন্য পাঁচ"
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
