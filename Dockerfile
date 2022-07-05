FROM wodby/node:16

ARG SLACKIN_VER
ENV SLACKIN_VER=$SLACKIN_VER

RUN npm install -g slackin-extended@~${SLACKIN_VER}

COPY bin /usr/local/bin
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bash", "-c", "slackin ${SLACK_TEAM} ${SLACK_TOKEN}"]
