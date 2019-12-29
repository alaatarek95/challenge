FROM ruby:2.6.4
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs netcat git imagemagick yarn  tzdata

RUN mkdir /challenge

WORKDIR /challenge

ENV RAILS_ENV development
# RUN yarn install
COPY Gemfile /challenge/Gemfile

COPY Gemfile.lock /challenge/Gemfile.lock


RUN gem install bundler
RUN gem install nokogiri -v '1.10.7' --source 'https://rubygems.org/'
RUN bundle install

COPY . /challenge

ENTRYPOINT ["sh", "./config/docker/startup.sh"]












