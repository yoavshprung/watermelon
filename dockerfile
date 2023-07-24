# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Set environment variable for any configurations, if needed
# ENV APP_ENV=production

# Expose the port on which your web application will run
EXPOSE 3000

# Command to start your web application
CMD ["npm", "start"]

