FROM node:14.17.3-buster

WORKDIR /code

COPY frontend/package.json ./package.json
COPY frontend/package-lock.json ./package-lock.json

RUN npm install

WORKDIR /code

COPY backend/package.json ./package.json
COPY backend/package-lock.json ./package-lock.json

RUN npm install

COPY . .

CMD ["npm", "run", "start"]
