# Use the official python alpine image
FROM python:alpine

# Set the working directory
WORKDIR /html

# Copy the required file into the container
COPY . /html

# Expose port 8080 to access the page
EXPOSE 8080

# Run the python server
CMD ["python", "app.py"]
