#Specify the a base image
From node:alpine

# Create app directory
WORKDIR /index

# Install app dependencies
COPY package*.json ./

RUN npm install

# Copying rest of the application to app directory
COPY . .

# Expose the port and start the application
Expose 8080

CMD ["npm","start"]