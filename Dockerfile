# השימוש בתמונת ה-Node.js הרשמית כבסיס
FROM node:18-slim
# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm i -D handlebars@4.5.0
COPY . .
EXPOSE 4000
CMD  ["node" , "index.js"]