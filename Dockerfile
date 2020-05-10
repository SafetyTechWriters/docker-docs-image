FROM ruby:2.4.6-alpine

MAINTAINER Claire Lundeby <clairelundeby@gmail.com>

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
&& npm install gulp@4.0.2 gulp-cli@2.0.1 -g \
&& npm install

# Install dependencies and gems

COPY Gemfile ./

RUN apk add --no-cache build-base libxml2-dev libxslt-dev ruby-json ruby-rake ruby-dev \
&& gem install bundler -v 1.17.3 \
&& gem install bundler -v 2.0.2 \
&& bundle install \
&& gem install html-proofer \
&& gem install rake

# Install bash

RUN apk add --no-cache bash

# Install cUrl

RUN apk add --no-cache curl

# Install openssh-client

RUN apk add --no-cache openssh-client

CMD ["bash"]
