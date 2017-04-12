FROM docker:17.03.1-ce-dind

RUN apk update

RUN apk add bash

RUN  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

RUN chmod +x kubectl; mv kubectl /usr/local/bin/kubectl

EXPOSE 8080

ADD start.sh /start.sh