FROM ruby:2-alpine

ENV BUILD_PACKAGES ruby-dev build-base libc-dev libxml2-dev libxslt-dev linux-headers

RUN apk update && apk upgrade && apk --update add \
    $BUILD_PACKAGES \
    && rm -rf /usr/lib/ruby/gems/*/cache/*.gem