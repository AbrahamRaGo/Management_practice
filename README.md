# README

This project is a practice
The practice have the next functions

- Manage tasks
- Task belongs to a category
- Task have participants
- Manage users
- Session control

It is make with ruby on rails, postgresql and implements Docker

## Previous requirements

- Install git
- Install docker

## Steps to run project

1. Build de docker file with docker-compose

```
docker-compose build
```

2. Run the project

```
docker-compose up
```

3. Enter to container bash

```
docker exec -it ruby-web-1 bash
```

4. Inside bash create de database

```
rails db:create
```

5. Run the migrations

```
rails db:migrate
```

6. Run the seed

```
rails db:seed
```

7. Go to localhost:3000
8. Login with email: abraham@gmail.com and password: 123456
