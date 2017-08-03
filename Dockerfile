# Use an official Python runtime as a parent image
FROM ruby:2.3-alpine

RUN apk add --update build-base sqlite-dev

RUN ["gem", "install", "gemstash"]
RUN ["whoami"]

EXPOSE 9292

CMD ["gemstash", "start", "--no-daemonize"]
