
# Use Node.js 18 (or your required version)
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker caching
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000 so the container can communicate externally
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
