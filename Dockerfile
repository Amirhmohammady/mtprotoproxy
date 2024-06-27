FROM telegrammessenger/proxy:latest As AmirUbuntu
USER root
RUN echo "deb http://archive.debian.org/debian jessie main" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y nginx
EXPOSE 443

