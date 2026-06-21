FROM node:20

WORKDIR /app

RUN apt-get update && apt-get install -y git

COPY . .

RUN npm install

ENV PORT=7860

ENV HOST=0.0.0.0

EXPOSE 7860

CMD ["npm", "run", "start"]
