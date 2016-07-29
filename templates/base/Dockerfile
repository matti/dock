FROM ruby:2.3.1-alpine
ARG ROCK_ENV=production

RUN adduser -D app; mkdir /app
WORKDIR /app

ADD Apkfile .
RUN apk update && source Apkfile

ADD Gemfile .
ADD Gemfile* ./

#RUN chown app:app Gemfile && chown app:app Gemfile.lock | cat
RUN chown -R app:app /app

USER app
RUN if [ "$ROCK_ENV" == "production" ]; then \
  echo "production bundle" && \
  gem install bundler && \
  bundle install --without "development test" \
;else \
  echo "development bundle" && \
  gem install bundler && \
  bundle install --without "production" \
;fi

USER root
ADD . .

RUN if [ "$ROCK_ENV" == "production" ]; then \
  apk del build-dependencies && \
  rm Apkfile \
;fi; \
chown -R app:app *

EXPOSE 4567

USER app
