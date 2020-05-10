FROM ruby:2.5.3-alpine

MAINTAINER Emily Rushton <emily.rushton@veeva.com>

CMD ["/sbin/my_init"]

# Install python, pip, and awscli

RUN apk add --no-cache python && \
python -m ensurepip && \
rm -r /usr/lib/python*/ensurepip && \
pip install --upgrade pip setuptools && \
rm -r /root/.cache && \
pip install awscli

# Install java 8

RUN apk --update --no-cache add openjdk8
CMD ["/usr/bin/java", "-version"]

# Install node, npm & packages (apk: dependencies for gifsicle / gulp / npm packages)

COPY package.json ./
RUN apk add --no-cache nodejs nodejs-npm \
&& npm install

# Install dependencies and gems

COPY Gemfile ./

RUN apk add --no-cache build-base libxml2-dev libxslt-dev ruby-json ruby-rake ruby-dev \
&& gem install bundler -v 2.0.2 \
&& bundle install \

# Install bash

RUN apk add --no-cache bash

# Install cUrl

RUN apk add --no-cache curl

# Install openssh-client

RUN apk add --no-cache openssh-client

CMD ["bash"]
