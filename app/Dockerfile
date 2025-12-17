# Use a lightweight official Python base image
FROM python:3.10-slim

# Set a working directory
WORKDIR /app

# Create a non-root user
RUN useradd -m simpleuser

# Copy application files
COPY simple_time_service.py ./ 

# Install Flask
RUN pip install --no-cache-dir flask

# Change ownership of the app directory
RUN chown -R simpleuser:simpleuser /app

# Switch to non-root user
USER simpleuser

# Expose the port
EXPOSE 8080

# Run the microservice
CMD ["python3", "simple_time_service.py"]
