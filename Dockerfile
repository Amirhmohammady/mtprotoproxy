FROM telegrammessenger/proxy:latest As AmirUbuntu
USER root
EXPOSE 443
RUN apt update
RUN apt install nginx
