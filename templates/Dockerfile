FROM ruby:2.3.1-alpine
ARG DOCK_BUNDLE_WITHOUT_GROUPS

RUN adduser -D app
WORKDIR /home/app

ADD Apkfile .
RUN apk update && source Apkfile

ADD Gemfile .
ADD Gemfile* ./

RUN chown app:app Gemfile && chown app:app Gemfile.lock | cat

USER app
RUN gem install bundler && \
  bundle install --without ${DOCK_BUNDLE_WITHOUT_GROUPS:-"development test"}

USER root
ADD . .
RUN apk del build-dependencies && \
  rm Apkfile && \
  chown -R app:app *

EXPOSE 4567

USER app
