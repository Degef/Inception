# Inception

## What is Docker?

- Docker is an open platform for developing, shipping, and running applications using containers.
- Docker uses containerization technology, a lightweight form of virtualization.
- Containers are isolated environments containing everything needed to run an application—code, runtime, libraries, and system tools.

## Docker Benefits over VMs

- Docker containers share the host operating system's OS, while VMs run on their own OS, consuming more resources.
- Isolation and portability
- Speed and Performance
- Resource Utilization

## Docker Network

Docker network is a feature enabling communication between Docker containers and between containers and the host system. It defines how containers communicate with each other or the external world.

## Transport Layer Security (TLS)

TLS (Transport Layer Security) is a security protocol ensuring privacy and data security for internet communications.

- Primary use: Encrypting communication between web applications and servers.
- HTTPS: Implementation of TLS encryption

**What does TLS do?**

- Encryption: Hides transferred data from third parties.
- Authentication: Ensures parties exchanging information are who they claim to be.
- Integrity: Verifies data has not been forged or tampered with.

## What is php-fpm, and what is it used for?

PHP-FPM (FastCGI Process Manager) is a web tool used to enhance website performance. It is faster than traditional CGI-based methods and can handle tremendous loads simultaneously.

## Docker Commands

    ```bash
    # Build Docker image
    docker build -t IMAGE_NAME:TAG .
    
    # Run Docker container
    docker run -d -p HOST_PORT:CONTAINER_PORT IMAGE_NAME:TAG
    
    # List containers
    docker ps
    
    # List all containers
    docker ps -a
    
    # Stop container
    docker stop CONTAINER_ID
    
    # Remove container
    docker rm CONTAINER_ID
    
    # List images
    docker images
    
    # Remove image
    docker rmi IMAGE_NAME:TAG
    
    # Inspect container
    docker inspect CONTAINER_ID
    
    # Inspect image
    docker inspect IMAGE_NAME:TAG
    
    # View container logs
    docker logs CONTAINER_ID
    
    # Execute command in container
    docker exec -it CONTAINER_ID COMMAND
    
    # Pull Docker image
    docker pull IMAGE_NAME:TAG
    
    # Push Docker image
    docker push IMAGE_NAME:TAG
    
    # Create Docker network
    docker network create NETWORK_NAME
    
    # List Docker networks
    docker network ls
    
    # Inspect Docker network
    docker network inspect NETWORK_NAME
    
    # Remove Docker network
    docker network rm NETWORK_NAME
    
    # Clean Up Unused Resources
    docker system prune

## Docker-Compose Commands

    ``` bash
    # Start Docker Compose services
    docker-compose up -d
    
    # Stop Docker Compose services
    docker-compose down
    
    # List Docker Compose services
    docker-compose ps
    
    # View Docker Compose service logs
    docker-compose logs SERVICE_NAME
    
    # Execute command in Docker Compose service
    docker-compose exec SERVICE_NAME COMMAND
    
    # Scale Docker Compose service
    docker-compose up -d --scale SERVICE_NAME=NUM_INSTANCES
    
    # Rebuild and start Docker Compose services
    docker-compose up -d --build
    
    # Stop and remove Docker Compose services with volumes
    docker-compose down -v
## Check data in MariaDB

    ``` bash
    # Access MariaDB shell
    docker exec -it CONTAINER_ID mysql -u root -p
    
    # Show databases
    show databases;
    
    # Use WordPress database
    use wordpress;
    
    # Show tables
    show tables;
    
    # Select data from a table
    select * from <your_table>;
    
    # Exit MariaDB shell
    exit;
## References 
VM setup 
  - https://github.com/Bakr-1/inceptionVm-guide.git

Project Guide
  -  https://tuto.grademe.fr/inception/#accueil
  -  https://github.com/codesshaman/inception/blob/main
  -  https://github.com/ChineduGboof/Inception
  -  https://github.com/ChineduGboof/Inception.git

General
  -  https://www.cloudflare.com/learning/ssl/what-is-an-ssl-certificate/
  -  https://youtu.be/pTFZFxd4hOI?si=0-unsQu4Lqf59i4A
  -  https://youtu.be/u-YWtdbpEhQ?si=7m2Wz9luBXP0yC1C
  -  https://wp-cli.org/#:~:text=WP%2DCLI%20is%20the%20command,without%20using%20a%20web%20browser.
