# Website

This website is built using [Docusaurus](https://docusaurus.io/), a modern static website generator.

## Installation

```bash
npm install
```

## Local Development

```bash
npm start
```

This command starts a local development server and opens up a browser window. Most changes are reflected live without having to restart the server.

## Build

```bash
npm run build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Deployment

The project is configured for deployment on a remote server at `/home/ddy/dexetera-docs` and is exposed on port **6902**.

To deploy on the server, you can use the `deploy.sh` script:

```bash
./deploy.sh
```

For manual serving:

```bash
npm run serve
```

This will start the server on port 6902.
