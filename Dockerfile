FROM debian
MAINTAINER Maxim B. Belooussov <belooussov@gmail.com>
COPY ./entrypoint.sh /entrypoint.sh
LABEL running="docker run -ti belooussov/smartlabels:latest"
ENTRYPOINT [ "/entrypoint.sh" ]
