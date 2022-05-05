# Tipccparser

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add tipccparser

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install tipccparser

## Example of usage

    require 'discordrb'
    require 'tipccparser'
    
    bot = Discordrb::Bot.new token: 'TOKEN'
    
    bot.message(start_with: "<") do |event|
        if event.author == 617037497574359050 then
            parsed = event.content.parse()
            event.respond "<@#{parsed[0]}> sent #{parsed[4]} usd to <@#{parsed[1]}>"
        end
    end

    bot.run

0 - sender id,
1 - receiver id,
2 - amount of crypto,
3 - crypto,
4 - usd value

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Donations
ETH, Polygon, BSC and other evm chains: 0x4034EFA510c4c0FB9427A0d9a0c8D4927d8cAfE8
more soon

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AvileForsure/Tip.cc-parser/issues. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/AvileForsure/Tip.cc-parser/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Tipccparser project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/AvileForsure/Tip.cc-parser/blob/main/CODE_OF_CONDUCT.md).
