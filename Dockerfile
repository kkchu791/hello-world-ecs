# Use official Node.js runtime as base image with explicit platform
FROM --platform=linux/amd64 node:18-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and server file to container
COPY package.json .
COPY server.js .

# Expose port 3000
EXPOSE 3000

# Run the server
CMD ["node", "server.js"]