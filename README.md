# Rrxcell

Standardize of operation manner for reading Excel files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rrxcell'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rrxcell

## Usage

``` ruby
require "rrxcell"

#--------------------#
# Excelx file with '.xlsx'
# Excel file with '.xls'
path = File.expand_path("PATH/TO/FILE.xlsx") # or "PATH/TO/FILE.xls"
book = Rrxcell.load(path)

puts book.sheet(0).row(0).column(0).value
# => "Sheet1!A1"

puts book[0][1][2].value
# => "Sheet1!C2"

puts book.address("Sheet1!B2").value
# => "Sheet1!B2"

puts book.sheet(0).address("B2").value
# => "Sheet1!B2"

puts book.sheet_names
# => ["Sheet1"]

puts book.sheet("Sheet1").address("AB3").value
# => "Sheet1!AB3"


```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sekizo/rrxcell.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
