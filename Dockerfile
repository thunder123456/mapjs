ARG NODEJS_VERSION=latest

FROM node:${NODEJS_VERSION}
WORKDIR /app

# Copy base required files
#COPY [ "LICENSE", "./" ]

# Copy dependency files
COPY [ "package.json", "package-lock.json", "./" ]

# Install dependencies
RUN npm install 

# Copy source code
COPY [ "src/", "./src/" ]
COPY [ "static/", "./static/" ]

# Run update script
RUN npm run update

# Expose volumes
VOLUME /app/src/configs/config.json
VOLUME /app/static/custom/

# Entrypoint
CMD npm start
