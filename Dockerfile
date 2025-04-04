FROM ubuntu

WORKDIR /app

COPY package*.json ./

RUN apt-get update && apt-get install npm -y

RUN npm install

COPY . . 

ENV PORT=8080

EXPOSE 8080

CMD ["npm", "start"]