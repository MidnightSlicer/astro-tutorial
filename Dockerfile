# Use a Node.js base image
FROM node:22.13-alpine
LABEL authors="dylan"

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the Astro.js application code
COPY . .

# Build the Astro.js application
RUN npm run build

# Install Alpine dependencies
RUN apk --no-cache add curl

# Set the command to start the Astro.js application
CMD ["npm", "run", "dev"]

# ENTRYPOINT ["top", "-b"]