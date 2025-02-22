
### **Chapter 5: Docker Images, Containers, and Layers**  
#### **Title: Understanding Docker Images, Containers, and Layers**  
---

### **🖼 Docker Images**  
- A **Docker Image** is a **read-only template** used to create containers.  
- Images include everything needed to run an application:  
  ✅ Code  
  ✅ Runtime  
  ✅ System libraries & dependencies  
- Images are **built from a Dockerfile** and stored in **Docker Hub** or private registries.  
- Example: Pulling an image from Docker Hub  
  ```sh
  docker pull nginx
  ```

---
### **📦 Docker Containers**  
- A **Docker Container** is a **running instance** of an image.  
- Containers are **lightweight and isolated** from the host system.  
- They run in **userspace**, sharing the host OS kernel.  
- Containers can be started, stopped, and removed without affecting the image.  
- Example: Running a container  
  ```sh
  docker run -d --name my-nginx nginx
  ```

---
### **🗂 Layers & The Union File System**  
- Docker images are **built in layers**, where each instruction in the **Dockerfile** creates a new layer.  
- Layers enable **efficient storage** and **fast builds** by reusing unchanged layers.  
- Layers are managed using **copy-on-write (CoW)**, reducing duplication.  
- Example:  
  ```dockerfile
  FROM ubuntu:latest   # Base layer
  RUN apt-get update   # Creates a new layer
  COPY app.py /app/    # Another new layer
  ```

---
### **Comparison: Docker Images vs. Containers**  

| Feature         | Docker Image | Docker Container |
|---------------|--------------|----------------|
| **Definition** | A read-only template | A running instance of an image |
| **Storage** | Stored in a registry | Runs in memory or persistent storage |
| **Mutability** | Immutable (cannot be changed) | Mutable (can change state) |
| **Usage** | Used to create containers | Executes applications |

---
### **Key Takeaways**  
✔ **Docker Images** are immutable templates used to create containers.  
✔ **Containers** are the running instances of images with isolated environments.  
✔ **Layers** optimize storage and speed up builds by **reusing unchanged layers**.  

---
## License
This project is licensed under the MIT License.

---
## **Contact**
For questions or feedback, feel free to reach out:
- **Email**: eyal@levys.co.il
- **GitHub**: [https://github.com/elevy99927](https://github.com/elevy99927)

---
### **Next Steps**
<A href="./Chapter-06.md">understanding resource efficiency. </A>
