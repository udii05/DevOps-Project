FROM nginx:alpine

# Remove default nginx web files
RUN rm -rf /usr/share/nginx/html/*

# Copy YOUR red deployment files
COPY index-red.html /usr/share/nginx/html/index.html
COPY style-red.css /usr/share/nginx/html/style-red.css

# Expose port 80
EXPOSE 80
