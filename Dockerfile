FROM node:14-alpine AS builder

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Build the app
RUN npm run build

# Production image
FROM node:14-alpine AS production

# Create app directory
WORKDIR /usr/src/app

# Install only production dependencies
COPY package*.json ./
RUN npm install --production

# Copy the build files from the builder image
COPY --from=builder /usr/src/app/dist ./dist

# Set environment variables
ENV PORT=3000

# Expose port
EXPOSE $PORT

# Start the app
CMD ["node", "dist/server.js"]
