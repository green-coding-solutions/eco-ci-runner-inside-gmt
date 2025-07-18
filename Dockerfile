FROM ubuntu:latest

RUN apt update && apt install curl jq liblttng-ust1 libkrb5-3 zlib1g libssl-dev libicu-dev -y

USER 1000
RUN mkdir /home/ubuntu/actions-runner
RUN cd /home/ubuntu/actions-runner && curl -o actions-runner-linux-x64-2.326.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.326.0/actions-runner-linux-x64-2.326.0.tar.gz && tar xzf ./actions-runner-linux-x64-2.326.0.tar.gz

CMD bash
