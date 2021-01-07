FROM ruby:2.7-alpine

RUN apk add --update --no-cache build-base postgresql-dev git tzdata nodejs \
            && rm -rf /var/cache/apk/*

ENV INSTALL_PATH /escamboApp
ENV BUNDLE_PATH ${INSTALL_PATH}/vendor/.gems_escambo

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile ./

RUN bundle config set --local path ${BUNDLE_PATH}
RUN bundle config set --local clean 'true'

RUN bundle install --jobs $(nproc)

COPY . .