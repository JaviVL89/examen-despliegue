FROM node:14
WORKDIR /var/app
COPY package*.json ./
RUN apt-get update && apt-get install -y nodejs
COPY . .
EXPOSE 8080
CMD ["node", "index.js"]

