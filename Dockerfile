# Custom Base Image Dockerfile
FROM node:18.13.0

# Set environment variables
ENV NODE_ENV=production

# Install minimal dependencies
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Create and set work directory
WORKDIR /usr/src/app

# Copy the application code (if applicable)
# COPY . .

# Install project dependencies
# RUN npm install --only=production

# Expose required ports
EXPOSE 3000 9229

# Default command
CMD ["node"]