
# Docker Course - Full Syllabus (Chapters 1-20)

##  Chapter 1: Introduction to Docker
- What is Docker?
- Why Use Containers Instead of VMs?
- Key Features of Docker
- Hands-on Exercise: Running Your First Container
- [Chapter 1: Introduction to Docker](https://github.com/elevy99927/docker/blob/main/docs/Chapter-01.md)


##  Chapter 2: Understanding Containers vs. Virtual Machines
- Traditional Virtual Machines vs. Containers
- Performance & Resource Efficiency
- Isolation & Security
- Comparison Table: VMs vs. Containers
- [Chapter 2: Why Use Containers Instead of Virtual Machines](https://github.com/elevy99927/docker/blob/main/docs/Chapter-02.md)

##  Chapter 3: Pros and Cons of Docker
- ✅ Advantages of Docker
- ❌ Limitations & Challenges
- Real-World Use Cases
- [Chapter 3: Pros and Cons of Docker](https://github.com/elevy99927/docker/blob/main/docs/Chapter-03.md)


##  Chapter 4: Docker Architecture
- Client-Server Model
- Docker Daemon (`dockerd`)
- Docker CLI (Command-Line Interface)
- Docker API & Objects Overview

##  Chapter 5: Docker Images, Containers, and Layers
- What are Docker Images?
- Understanding Layers & Union File System
- Creating & Managing Containers from Images
- Hands-on Exercise: Running Containers & Inspecting Images

##  Chapter 6: Running Multiple Containers from One Image
- How Docker Reuses Images Efficiently
- Avoiding Port Conflicts
- Scaling Containers for Load Balancing
- Hands-on Exercise: Running Multiple Containers

##  Chapter 7: Docker Engine and Container Runtimes
- Understanding `dockerd` vs. `containerd`
- How Docker Runs Containers Internally
- Comparison of Different Container Runtimes
- Hands-on Exercise: Running a MySQL Container

##  Chapter 8: Namespaces & Cgroups (Process Isolation)
- What are Namespaces?
- What are Cgroups?
- How Docker Uses Namespaces & Cgroups for Isolation
- Hands-on Exercise: Managing Resources with Cgroups

##  Chapter 9: Essential Docker Commands
- Managing Containers (`run`, `ps`, `stop`, `rm`)
- Handling Images (`pull`, `rmi`, `images`)
- Inspecting Containers & Logs
- Hands-on Exercise: Running & Managing an Nginx Container

##  Chapter 10: Building Docker Images with Dockerfile
- What is a Dockerfile?
- Basic Dockerfile Instructions (`FROM`, `RUN`, `COPY`, `CMD`)
- Hands-on Exercise: Building & Running a Custom Image

##  Chapter 11: ENV vs ARG in Docker Builds
- What are `ENV` and `ARG`?
- How They Differ & When to Use Each
- Hands-on Exercise: Using `ENV` & `ARG` in Dockerfiles

##  Chapter 12: Docker Build Context & Best Practices
- Understanding Build Context & `.dockerignore`
- Optimizing Image Size & Caching Layers
- Best Practices for Secure & Efficient Images
- Hands-on Exercise: Optimizing a Dockerfile

##  Chapter 13: Working with Docker Hub & Private Registries
- What is Docker Hub?
- Pushing & Pulling Images to a Registry
- Setting Up a Private Registry
- Hands-on Exercise: Uploading an Image to Docker Hub

##  Chapter 14: Docker Networking
- Why is Container Networking Necessary?
- Understanding Docker Network Types (Bridge, Host, Overlay)
- Hands-on Exercise: Creating a Custom Network & Ping Containers

##  Chapter 15: Docker Volumes & Persistent Storage
- Bind Mounts vs. Volumes
- Managing Data Persistence in Containers
- Backup & Restore Strategies
- Hands-on Exercise: Using Docker Volumes for Data Storage

---

# Part 2: Advanced Topics & Project Work

##  Chapter 16: Advanced Docker Topics
- Securing Docker Containers
- Best Practices for Production Deployments
- Hands-on Exercise: Secure a Containerized App

##  Chapter 17: Multi-Stage Builds
- Why Use Multi-Stage Builds?
- Reducing Image Size & Security Best Practices
- Hands-on Exercise: Building a Multi-Stage Docker Image

##  Chapter 18: Docker Compose
- What is Docker Compose?
- Defining Multi-Container Applications
- Compose File Structure & Syntax (`docker-compose.yml`)
- Hands-on Exercise: Deploying a Full-Stack App with Docker Compose

##  Chapter 19: CI/CD Integration (Optional - DevOps Focused)
- Automating Docker Builds with Jenkins/GitHub Actions
- Building & Pushing Images to a Private Registry
- Hands-on Exercise: CI/CD Pipeline for Dockerized Applications

##  Chapter 20: Final Project
- Install JFrog Artifactory ➝ [GitHub - JFrog JCR](https://github.com/elevy99927/Jenkins-k8s/tree/main/Part2-repo/02-Jfrog-JCR)
- Final Challenge: Build & Deploy a Complete App with Docker Multi-Stage Builds
- Capstone Hands-on Project: Full-Stack Deployment with Docker

---

## License
This project is licensed under the MIT License.

---
## Contact
For questions or feedback, feel free to reach out:
- Email: eyal@levys.co.il
- GitHub: [https://github.com/elevy99927](https://github.com/elevy99927)

---
### Next Steps
<A href="./Chapter-01.md">
Understanding Docker architecture and core components. 
</A>
