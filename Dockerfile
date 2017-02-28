FROM ruby:2.4.0

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile Gemfile.lock /app/
RUN bundle install --jobs 4 --path /bundle
COPY . /app/

EXPOSE 9292
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0"]
