#serverDocker

FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .
RUN echo 'Installation Completed....'
CMD ["npm", "start"]