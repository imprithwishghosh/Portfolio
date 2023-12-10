/*FROM httpd:latest
*/COPY . /usr/local/apache2/htdocs/
*/RUN apt-get update && apt-get install -y node.js
*/CMD ["httpd-foreground"]
*/

# Use an official Nginx image
FROM nginx:alpine

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Copy the content of the local src directory to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 80

# CMD is not needed for the official Nginx image, as it specifies the default command
