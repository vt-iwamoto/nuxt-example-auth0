FROM node:10.16.0-alpine

WORKDIR /home/app

COPY . /home/app
RUN npm install && npm run build

ARG PORT=3000
EXPOSE $PORT
ENV PORT ${PORT:-3000}

CMD ["npm", "start"]
