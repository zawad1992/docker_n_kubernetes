# Use the nginx:alpine base image
FROM nginx:alpine

# Copy custom Nginx configuration file
COPY ./vhost.conf /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
