FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.9.0

RUN gem install fastlane --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bin-proxy"]
CMD ["--help"]
