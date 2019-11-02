# Use an existing image as a base from hub.docker.com
FROM node:alpine

# Specifying a work directory 
WORKDIR /app

# Copying build files into the container
# Download and install dependency

COPY ./package.json ./
RUN npm config set registry https://registry.npmjs.org/
RUN npm install
COPY ./ ./

# Tell the image what to do when it starts as a container
CMD ["npm","run","start"]