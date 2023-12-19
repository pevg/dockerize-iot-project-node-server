# Base Image
FROM node:18-alpine3.17
# creating App directory
WORKDIR /usr/src/app
# Copying package.json and install dependencies
COPY package*.json ./
RUN npm install
# Copying the rest of the code
COPY . .
# Expose port
EXPOSE 3000
# Command to run the app
CMD [ "node", "app.js" ]
