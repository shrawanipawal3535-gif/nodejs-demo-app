# Use the official Node.js image as our base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json files first to install dependencies
COPY package*.json ./

# Install the dependencies inside the container
RUN npm install

# Copy the rest of our application code
COPY . .

# Tell Docker that the container will listen on port 3000
EXPOSE 3000

# The command to run our app
CMD ["node", "server.js"]
