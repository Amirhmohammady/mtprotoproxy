FROM telegrammessenger/proxy:latest As AmirUbuntu
USER root
RUN echo "deb http://archive.debian.org/debian jessie main" > /etc/apt/sources.list
RUN apt-get update && apt-get install -y --force-yes nginx

RUN useradd -s /bin/false nginx
COPY nginx.conf /etc/nginx/nginx.conf
# Start Nginx directly
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80








