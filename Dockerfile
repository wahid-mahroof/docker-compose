FROM node:20-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN apk add --no-cache python3 make g++

RUN npm install 

COPY . .

ENV DATABASE_URL="postgresql://neondb_owner:npg_uwj2QGfi3oyF@ep-hidden-block-a42me0s1-pooler.us-east-1.aws.neon.tech/neondb?sslmode=require"

RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev
RUN npx prisma generate
RUN npx run build

CMD [ "npm" , "start" ]
