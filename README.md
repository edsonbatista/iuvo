**HACKER2SAVE**
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.0-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)

This README document includes what you need to do to get the
application up and running.

NOTE: Make sure you have [Docker](https://docs.docker.com/engine/installation/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

This project is tested and running perfectly on the following configuration:
```
Docker version 17.04.0-ce
docker-compose version 1.9.0
```

## [Click and open the project](http://.herokuapp.com)

![Hacker2Save](https://raw.githubusercontent.com/edsonbatista/iuvo/master/app/assets/images/screenshot.png)

# Getting Started

### Build your containers
`docker-compose build`

### Install all dependences
`docker-compose run --rm website bundle install`

### Create database
`docker-compose run --rm website bundle exec rake db:create`

### Runn
`docker-compose up`

### Run tests
`docker-compose run --rm website bundle exec rspec spec/`
