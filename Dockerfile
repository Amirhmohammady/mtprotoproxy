FROM telegrammessenger/proxy:latest As AmirUbuntu
USER root
RUN apt-get update && apt-get install -y nginx
EXPOSE 443

