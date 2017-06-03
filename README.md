# README

This README document includes what you need to do to get the
application up and running.

NOTE: Make sure you have [Docker](https://docs.docker.com/engine/installation/) installed.
This project is tested and running perfectly on the following configuration:
Docker version 17.04.0-ce
docker-compose version 1.9.0

# Getting Started

### Build your containers
`docker-compose build`

### Install all dependences
`docker-compose run --rm website bundle install`

### Create database
`docker-compose run --rm website bundle exec rake db:create`

### Run
`docker-compose up`
