# Multi-Container Node.js App with Nginx Proxy Using Docker Compose
This project demonstrates how to run multiple Node.js applications behind a Nginx reverse proxy using Docker and Docker Compose.

## Project Structure
- **Node.js Apps**: Three identical instances (`app1`, `app2`, and `app3`) running a simple Express.js server.
- **Nginx Proxy**: Routes traffic to the Node.js instances.

## Prerequisites
- Docker
- Docker Compose

## Installation
1. Clone this repository:
   ```sh
   git clone https://github.com/jeet1293/dockerized-node-with-nginx
   cd dockerized-node-with-nginx
   ```
2. Build and start the services:
   ```sh
   docker compose up --build -d
   ```

## Services
### Node.js Applications
Each application (`app1`, `app2`, `app3`) runs a simple Express server and is part of the `app_network`.

### Nginx Reverse Proxy
- Uses `nginx.conf` for routing.
- Auto-generates SSL certificates via `generate_cert.sh`.
- Exposes ports `8080` (HTTP) and `443` (HTTPS).

## Configuration Files
- **Dockerfile**: Defines how Node.js applications are built.
- **docker-compose.yml**: Defines services and networking.
- **nginx.conf**: Configures Nginx as a reverse proxy.
- **generate_cert.sh**: Handles SSL certificate generation.

## Usage
- Access the application via:
  ```
  http://localhost:8080
  ```

## Stopping Services
To stop and remove all containers:
```sh
docker compose down
```

## License
This project is licensed under the MIT License.

