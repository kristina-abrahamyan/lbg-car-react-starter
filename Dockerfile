FROM node:latest

WORKDIR /app

COPY package*.json ./
# npm install means we are installing dependencies specified in package.json
RUN npm install

COPY . .

CMD ["npm", "start"]
