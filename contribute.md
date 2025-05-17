manual installation
Install nodejs locally()
clone the repo
Install dependencis npm install
start the DB locally
docker run -e POSTGRES_PASWORD=mysecretpassword -d -p 5432;5432 postgres

- go to noen tech and get yourslef a new db
- chnage the .env file and update your DB credentials
  npc prisma migrate
  npx prisma genrate
  npx run build
  npm run start

##Docker installation
install docker

- create a network - docker network create user_project
  start postgres

- docker run --network user-projet --name postgres -e POSTGRES_PASSWORD=npg_uwj2QGfi3oyF -d -p 5432:5432 postgres
- build the image - `docker build --network=host -t user-project .`

  -start the image - `docker run -e DATABASE_URL=postgresql://neondb_owner:npg_uwj2QGfi3oyF@ep-hidden-block-a42me0s1-pooler.us-east-1.aws.neon.tech/neondb?sslmode=require --network user_project -p 3000:3000 user-project`

##Docker compose installation steps
Install docker,docker-compose
-Run docker-compose up
