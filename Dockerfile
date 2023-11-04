# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the React app (this command depends on your project setup)
RUN npm run build

# Expose a port (usually 3000) to access the application
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]