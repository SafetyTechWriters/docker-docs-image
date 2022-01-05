FROM ruby:2.7.0-alpine 
ENV BUNDLE_PATH=$GEM_HOME
LABEL maintainer="Emily Rushton emily.rushton@veeva.com"

CMD ["/sbin/my_init"]

# Install python3 + pip
ENV PYTHONUNBUFFERED 1
RUN apk add --update --no-cache python3
RUN apk add py3-pip
CMD ["/usr/bin/python", "-version"] 

# Install aws cli
RUN pip3 install awscli

# Install java 8
RUN apk --update --no-cache add openjdk8
CMD ["/usr/bin/java", "-version"]

# Install node, npm & packages (apk: dependencies for gifsicle / gulp / npm packages)

COPY package.json .
COPY package-lock.json .
RUN apk add --update --no-cache nodejs npm 
RUN npm install

# Install bundler
RUN apk add --no-cache build-base libxml2-dev libxslt-dev \
&& bundle config set clean 'true' \
&& apk update \
&& gem install bundler -v 2.1.4

# Install gems
COPY Gemfile .
COPY Gemfile.lock .
RUN gem update --system \
&& bundle install

# Install bash
RUN apk add --no-cache bash

# Install cUrl
RUN apk add --no-cache curl

# Install openssh-client
RUN apk add --no-cache openssh-client

CMD ["bash"]
