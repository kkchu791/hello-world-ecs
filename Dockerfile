
# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory in container
WORKDIR /app

# Copy server file to container
COPY server.js .

# Expose port 3000
EXPOSE 3000

# Run the server
CMD ["node", "server.js"]