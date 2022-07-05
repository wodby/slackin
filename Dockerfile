FROM wodby/node:16

ARG SLACKIN_VER
ENV SLACKIN_VER=$SLACKIN_VER

RUN npm install -g slackin-extended@~${SLACKIN_VER}

COPY bin /usr/local/bin
COPY docker-entrypoint.sh /

USER root

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["bash", "-c", "slackin -h '0.0.0.0' ${SLACK_TEAM} ${SLACK_TOKEN}"]
