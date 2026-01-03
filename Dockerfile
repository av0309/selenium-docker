FROM bellsoft/liberica-openjdk-alpine

#Install curl jq
RUN apk add curl jq
#worksapce
WORKDIR /home/selenium-docker
# add required file ./ means WORKDIR
ADD target/docker-resources       ./
# add runner
ADD runner.sh                      runner.sh
# Fix for windows
RUN dos2unix runner.sh
#Entry point
ENTRYPOINT sh runner.sh