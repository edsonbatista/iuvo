FROM ruby:2.3-slim
# install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# set path
ENV INSTALL_PATH /iuvo
# create dir
RUN mkdir -p $INSTALL_PATH
# set path as main directory
WORKDIR $INSTALL_PATH
# copy gemfile to container
COPY Gemfile ./
# set gem path
ENV BUNDLE_PATH /box
# copy code from container
COPY . .
