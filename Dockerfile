# Custom Base Image Dockerfile
FROM debian:bullseye-slim

# Environment variables
ENV NODE_VERSION=18.13.0

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    gnupg \
 && curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
 && apt-get install -y nodejs \
 && npm install -g npm@latest \
 && rm -rf /var/lib/apt/lists/*

# Set default work directory
WORKDIR /usr/src/app

# Expose standard ports
EXPOSE 3001 9229

# Define entrypoint (optional, if commonly used)
CMD ["node"]