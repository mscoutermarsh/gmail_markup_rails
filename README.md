# GmailMarkup
[![Build Status](https://travis-ci.org/mscoutermarsh/gmail_markup_rails.svg?branch=master)](https://travis-ci.org/mscoutermarsh/gmail_markup_rails)

Add those fancy Gmail action buttons to your emails.

<img src="https://raw.githubusercontent.com/mscoutermarsh/gmail_markup_rails/master/readme-screenshot.png" width="268px"/>

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gmail_markup'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gmail_markup

## Usage

#### 1. Add to your mailer layout
First, you'll need to add `<%= render_gmail_markup %>` to your mailer layout somewhere **inside** the body tag. This is how Gmail markup will add the correct markup to your emails.

```
<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <%= yield %>
    <%= render_gmail_markup %>
  </body>
</html>
```

#### 2. Add to ApplicationMailer

In your ApplicationMailer, add `include GmailMarkup`

```Ruby
class ApplicationMailer < ActionMailer::Base
  include GmailMarkup
  ...
end
```

#### 3. Use it

Now, to add an action to your emails. Use `gmail_markup_view_action`
```Ruby
class BattleSchoolMailer < ActionMailer::Base
  def welcome
    gmail_markup_view_action(name: 'Save Earth',
                             target_url: 'https://www.battleschool.gov')
                             
    mail(to: 'ender@battleschool.gov', subject: 'Welcome Ender')
  end
end
```

- `name` is the text shown in the button
- `target_url` is where the user will be directed when they click it


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mscoutermarsh/gmail_markup_rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

