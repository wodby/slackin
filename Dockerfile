FROM node:alpine
MAINTAINER Wodby <hello@wodby.com>

RUN npm install -g slackin

CMD slackin -p 80 $SLACK_TEAM $SLACK_TOKEN
