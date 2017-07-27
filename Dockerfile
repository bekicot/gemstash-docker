# Use an official Python runtime as a parent image
FROM ruby:2.4.1

RUN ["gem", "install", "gemstash"]
RUN ["whoami"]

EXPOSE 9292

CMD ["gemstash", "start", "--no-daemonize"]
