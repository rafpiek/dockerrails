FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs
RUN mkdir /dockerapp
WORKDIR /dockerapp
COPY Gemfile /dockerapp/Gemfile
copy Gemfile.lock /dockerapp/Gemfile.lock
RUN bundle install
COPY . /dockerapp

EXPOSE 3000
CMD ["rails", "server"]