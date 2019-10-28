FROM circleci/buildpack-deps:stretch
FROM circleci/python:3.7.4

RUN sudo pip install --upgrade pip
RUN sudo pip install awscli

ENV TERRAFORM_VERSION="0.12.9"

RUN sudo curl https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip >/tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
RUN sudo unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /bin
RUN sudo rm -f /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

ENV NODEJS_VERSION="12.x"

RUN curl -sL https://deb.nodesource.com/setup_${NODEJS_VERSION}} | sudo -E bash -
RUN sudo apt-get install -y nodejs

CMD ["/bin/sh"]