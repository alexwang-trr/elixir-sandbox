# Use a base image with Ubuntu
FROM snyk/snyk:elixir


# Copy the entrypoint script into the Docker image
COPY entrypoint.sh entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x entrypoint.sh

# Set the entrypoint script
ENTRYPOINT ["entrypoint.sh"]