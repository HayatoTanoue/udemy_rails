FROM ruby:2.5
RUN apt-get update && apt-get install -y \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn


WORKDIR /udemy_rails
COPY Gemfile Gemfile.lock /udemy_rails/
RUN bundle install