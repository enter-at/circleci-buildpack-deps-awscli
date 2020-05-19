FROM circleci/buildpack-deps:stretch
FROM circleci/python:3.8.0

RUN sudo apt-get update

RUN sudo apt-get install rsync

RUN sudo pip install --upgrade pip
RUN sudo pip install awscli

ENV TERRAFORM_VERSION="0.12.25"

RUN sudo curl -fsSLO --compressed https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN sudo unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
RUN sudo rm -f terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV NODE_VERSION="12.13.0"

RUN sudo curl -fsSLO --compressed https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz
RUN sudo tar -xJf node-v${NODE_VERSION}-linux-x64.tar.xz -C /usr/local --strip-components=1 --no-same-owner
RUN sudo rm node-v${NODE_VERSION}-linux-x64.tar.xz
RUN sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs

CMD ["/bin/sh"]
