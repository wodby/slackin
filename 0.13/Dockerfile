FROM node:alpine

ENV SLACKIN_VER 0.13

RUN apk add --update bash curl make && \
    npm install -g slackin@~${SLACKIN_VER}

COPY actions /usr/local/bin
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bash", "-c", "slackin -p 80 ${SLACK_TEAM} ${SLACK_TOKEN}"]
