ARG NODEJS_VERSION=latest

FROM node:${NODEJS_VERSION}
WORKDIR /app

# Copy base required files
COPY [ "LICENSE", "./" ]

# Copy dependency files
COPY [ "package.json", "package-lock.json", "./" ]

# Install dependencies
RUN npm install

# Copy source code
COPY [ "src/", "./src/" ]
COPY [ "static/", "./static/" ]

# Expose volumes
VOLUME /app/src/configs/config.json
VOLUME /app/static/custom/
VOLUME /app/static/locales/

# Entrypoint
CMD npm start