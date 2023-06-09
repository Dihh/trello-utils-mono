FROM ruby:3.2.2

WORKDIR /app

RUN gem install rails bundler rufo

COPY ./Gemfile /app/Gemfile
COPY ./Gemfile.lock /app/Gemfile.lock

RUN bundle install

RUN chmod +x /app

EXPOSE 3000

# CMD ["rails","server","-b","0.0.0.0"]