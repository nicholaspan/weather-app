# Dockerfile
FROM node:10

# Set the work directory
WORKDIR /weatherapp

# Install app dependencies
COPY package*.json ./

# Install depedendencies
RUN npm install 

# Add application files
COPY . .

EXPOSE 8000

CMD ["node", "server.js"]
