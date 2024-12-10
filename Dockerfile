# Custom Base Image Based on Node.js
FROM node:18.13.0

# Set environment variables
ENV NODE_ENV=production

# Install necessary tools and clean up
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Create directories
RUN mkdir -p /usr/src/app /tmp/extracted_files

# Set working directory
WORKDIR /usr/src/app

# Expose ports
EXPOSE 3001 9229

# Define entrypoint
CMD ["node"]