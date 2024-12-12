# Step 1: Build React App
FROM node:22

WORKDIR /app

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT [ "npm", "start" ]