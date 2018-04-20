# Address_Book
An address book web application (RubyOnRails) that stores phone numbers, name, email, and displays mailing labels.. CRUD functionality

As Kanye West said:

> Ruby Rocks

## Setup Instructions:

```
# Create a new work branch Clone from:
  git clone https://github.com/Dieumerci/AddressBook.git
  cd addressbook
  
==== Create a new work branch ====
  git checkout -b addressbook
  
==== Install all the required gems====
  Run :: bundle install         
  Run :: rake db:migrate

==== Start the Web Application ====
    Run :: rake / rspec            
    Run :: rails s    
################################################################  
  
  Load http://localhost:3000 in your browser
```

## Run the Docker file using following commands:
```
docker-compose up -d # Visit http://localhost:3000 to see it running!

# Attach our terminal to the 'web' container (it must be running) - notice that
# we must use the created container name, not the service name:
docker attach addreesbook_web_1 

# Run one-off commands when the web container is not running:
docker-compose run --rm web bash # or `rails console`, etc

# Run commands inside a running container:
docker-compose exec web bash


```
