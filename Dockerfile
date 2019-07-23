FROM ruby:2.5-alpine

RUN apk add --update --no-cache \
      build-base postgresql-dev git tzdata nodejs && rm -rf /var/cache/apk/*

ENV INSTALL_PATH /escamboApp
ENV BUNDLE_PATH ${INSTALL_PATH}/.gems_escambo

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile ./

RUN bundle install --jobs=10 --path=${BUNDLE_PATH} --clean

COPY . .