# Creates a Docker container
# which is suitable for deploying 
# a hugo site to S3 via Gitlab CI.

FROM golang
MAINTAINER James Ethridge

RUN apt update \
&& apt-get install python-pip \
&& pip install awscli \
&& go get -u -v github.com/gohugoio/hugo