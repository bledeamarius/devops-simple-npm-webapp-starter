FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Copy required directories, while maintaining the initial structure
COPY package.json .
COPY app ./app
COPY dist ./dist
COPY node_modules ./node_modules

ARG PORT_TO_EXPOSE=8081

EXPOSE ${PORT_TO_EXPOSE}

CMD [ "npm", "start" ]