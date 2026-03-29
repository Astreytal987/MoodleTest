FROM node:20

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/hexlet-components/js-fastify-blog.git .

COPY package*.json ./
RUN npm ci

EXPOSE 3000

CMD ["npm", "start"]
