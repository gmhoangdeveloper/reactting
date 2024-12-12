# Start with a base image containing Node.js
FROM node:latest

# Set the working directory in the container to /app
WORKDIR /hoang

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies in the container
RUN npm install

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Make port 3000 available to the outside world
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
