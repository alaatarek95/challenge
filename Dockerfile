FROM rails:onbuild
FROM ruby:2.6.4
RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs \
  netcat

RUN mkdir /challenge

WORKDIR /challenge

ENV RAILS_ENV development
# RUN yarn install
COPY Gemfile /challenge/Gemfile

COPY Gemfile.lock /challenge/Gemfile.lock


RUN gem update --system && gem install bundler && bundle install && bundle update rake


COPY . /challenge

ENTRYPOINT ["sh", "./config/docker/startup.sh"]













