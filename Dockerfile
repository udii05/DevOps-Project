# Use official Nginx image
FROM nginx:alpine

# Remove default nginx assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your project files into nginx html folder
COPY . /usr/share/nginx/html/

# Expose port 80 (nginx default)
EXPOSE 80
