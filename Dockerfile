# Base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the app files
COPY . .

# Expose the port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]



