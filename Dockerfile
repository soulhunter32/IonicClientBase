# Create image based on the official Node 6 image from dockerhub
FROM node:latest

RUN npm install -g ionic

# Create a directory where our app will be placed
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json /usr/src/app

# Install dependecies
RUN npm install --quiet

# Installs Ionic Lab
RUN npm install -g @ionic/lab

# Get all the code needed to run the app
#COPY . /usr/src/app

# Expose the port the app runs in
EXPOSE 8100
# Expose the port of app lab
EXPOSE 8200

# Serve the app
#CMD ["ionic", "serve"]
