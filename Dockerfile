FROM ruby:2.5-apline 

RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
        postgresql-client \
        nodejs \
        qt5-default \ 
        libqt5webkit5-dev \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app

ADD Gemfile* /app/
RUN bundle install
COPY . .


CMD bundle exec unicorn -c ./config/unicorn.rb 


