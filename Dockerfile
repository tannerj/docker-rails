FROM ruby:3.1.2-buster

WORKDIR /usr/src/app

COPY Gemfile* .

RUN bundle install

COPY . .

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
