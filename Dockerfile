FROM node:lts-buster  # node 20.15.0 (compatible with your current packages)

WORKDIR /app

COPY package.json ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
