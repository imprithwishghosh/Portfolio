FROM httpd:latest
COPY . /usr/local/apache2/htdocs/
RUN apt-get update && apt-get install -y node.js
CMD ["httpd-foreground"]
