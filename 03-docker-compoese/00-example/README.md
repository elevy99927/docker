# Docker Compose Example

A simple Docker Compose setup demonstrating basic service configuration with nginx, networking, volumes, and bind mounts.

## Architecture

```mermaid
graph TB
    subgraph dc["Docker Compose"]
        nginx["🌐 nginx Service"]
    end
    
    subgraph networks["Networks"]
        db_layer["db_layer"]
        app_layer["app_layer"]
    end
    
    subgraph storage["Storage"]
        bind["Bind Mount: ./source → /code"]
        volume["Volume: logicalVolume01 → /var/log"]
    end
    
    subgraph host["Host"]
        port["Port 8080"]
    end
    
    nginx --> db_layer
    nginx --> app_layer
    nginx --> bind
    nginx --> volume
    port -->|maps to| nginx
```

## Components

| Component | Details |
|-----------|---------|
| **Service** | nginx web server |
| **Port** | 8080:8080 (host:container) |
| **Networks** | db_layer, app_layer |
| **Bind Mount** | ./source → /code |
| **Volume** | logicalVolume01 → /var/log |

## Quick Start

```bash
# Start the services
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

## File Structure

- `Dockerfile` - Builds the nginx image
- `docker-compose.yml` - Service configuration and orchestration
- `README.md` - This file
