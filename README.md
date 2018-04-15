# Address_Book
An address book web application (RubyOnRails) that stores phone numbers, name, email, and displays mailing labels.. CRUD functionality

As Kanye West said:

> We're living the future so
> the present is our past.

I think you should use an
`<addr>` element here instead

## Setup Instructions:

```
git clone git://github.com/jwood/addressbook.git
cd addressbook
gem install bundler
bundle install

cp config/database.yml.template config/database.yml
# configure your database

cp config/application_config.yml.template config/application_config.yml
# configure the application

bundle exec rake db:migrate
```

