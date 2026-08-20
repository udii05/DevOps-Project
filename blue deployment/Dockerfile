# Use official Nginx image
FROM nginx:alpine

# Remove default nginx web files
RUN rm -rf /usr/share/nginx/html/*

# Copy YOUR blue deployment files
COPY index-blue.html /usr/share/nginx/html/index.html
COPY style-blue.css /usr/share/nginx/html/style-blue.css

# Expose port 80
EXPOSE 80
