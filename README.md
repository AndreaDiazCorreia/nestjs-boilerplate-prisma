
## Badges


![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) 
![NestJS](https://img.shields.io/badge/nestjs-%23E0234E.svg?style=for-the-badge&logo=nestjs&logoColor=white)
![PNPM](https://img.shields.io/badge/pnpm-%234a4a4a.svg?style=for-the-badge&logo=pnpm&logoColor=f69220)


# NestJS Prisma Project Template

This template provides a starting point for building a NestJS application using Prisma as an ORM. It includes configuration for local development with Docker and instructions for running the application and tests.


## Prerequisites

 - [Node.js](https://nodejs.org/en)
 - [Docker](https://www.docker.com/)
 - [pnpm](https://pnpm.io/es/)


## Getting Started

To get started with this template, clone the repository and install the dependencies.

```bash
# Clone the repository
git clone https://github.com/AndreaDiazCorreia/nestjs-boilerplate-prisma.git
cd nestjs-boilerplate-prisma

# Install dependencies
pnpm install
```

## Docker Setup

This template includes a Docker configuration for running a PostgreSQL database. To start the PostgreSQL database:

```bash
docker-compose up -d

# Ensure the database is running by checking the container status:
docker ps
```

## Running the Application

You can start the application in development, watch, or production mode.

```bash
# development mode
pnpm run start

# watch mode
pnpm run start:dev

# production mode
pnpm run start:prod
```
## Running Tests

Run unit tests, end-to-end tests, or test coverage reports using the following commands:

```bash
# unit tests
pnpm run test

# e2e tests
pnpm run test:e2e

# test coverage
pnpm run test:cov
```


## Environment Variables

The application requires configuration via environment variables. Copy the .env.example to .env and modify it according to your environment:

```bash
cp .env.example .env
```
Edit `.env` and set the `DATABASE_URL` to connect to your Dockerized PostgreSQL database.

## Prisma Integration

To generate the Prisma client and apply database migrations, use:

```bash
pnpm prisma generate
pnpm prisma migrate deploy
```
These commands set up the Prisma client and apply any migrations defined in the Prisma schema to your database.



## Building for Production

To build the application for production deployment:

```bash
  pnpm run build
```

This compiles the TypeScript code into JavaScript in the `dist` directory.


## Contributing

Contributions are always welcome!


## Authors

- [@andreadiazcorreia](https://www.github.com/andreadiazcorreia)


## License

[MIT](https://choosealicense.com/licenses/mit/)

