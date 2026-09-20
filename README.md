# Slackin docker container image

[![Build Status](https://github.com/wodby/slackin/workflows/Build%20docker%20image/badge.svg)](https://github.com/wodby/slackin/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/slackin.svg)](https://hub.docker.com/r/wodby/slackin)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/slackin.svg)](https://hub.docker.com/r/wodby/slackin)

## Image revisions

Use image revision tags such as `wodby/slackin:2.2-rN` to select a Wodby image revision.
See [release tags](https://github.com/wodby/slackin/tags) for available revisions and the [image revision policy](https://github.com/wodby/images#image-revisions) for upgrade guidance.
Existing SemVer image tags remain available.

## Supported tags and respective `Dockerfile` links

- [`2.2.1`, `2`, `latest` (*0.13/Dockerfile*)](https://github.com/wodby/slackin/tree/master/Dockerfile)

## Environment variables available for customization

| Environment Variable | Default Value | Description |
|----------------------|---------------|-------------|
| SLACK_TEAM           |               |             |
| SLACK_TOKEN          |               |             |

## Deployment

Deploy Slackin to your own server via [Wodby](https://wodby.com).
