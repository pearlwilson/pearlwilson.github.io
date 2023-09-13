# Use the official Nginx image
FROM nginx

# Copy your local index.html file into the container
RUN mkdir /usr/share/nginx/html/my_app

# Copy the entire local directory to the container
COPY src/hello-world-app/build/ /usr/share/nginx/html/my_app

# Expose the default Nginx port (80)
EXPOSE 80
