### **Chapter 4: Docker Architecture**  
#### **Title: Understanding Docker Architecture**  
---

### **🔹 Core Components of Docker**  
Docker is built on a **client-server** architecture, where different components work together to manage containers efficiently.

---
### **🖥 Docker Daemon (dockerd)**  
- A background process that **manages Docker objects** (containers, images, networks, and volumes).  
- Listens for **Docker API requests** and interacts with the OS kernel.  
- Responsible for **building and running containers**.  

---
### **📟 Docker CLI (Command-Line Interface)**  
- The main tool for **interacting with the Docker Daemon**.  
- Allows users to **run, stop, build, and manage** containers.  
- Example command:  
  ```sh
  docker run -d nginx
  ```
  (Runs an Nginx container in the background.)

---
### **🌍 Docker API**  
- Enables **programmatic interaction** with the Docker Daemon.  
- Used by third-party tools like **Docker Compose, Kubernetes, and CI/CD pipelines**.  

---
### **🗂 Docker Objects Overview**  
| Object | Description |
|--------|------------|
| **Images** | Read-only templates used to create containers |
| **Containers** | Running instances of images |
| **Volumes** | Persistent storage for containers |
| **Networks** | Virtual networks for container communication |

---
### **Key Takeaways**  
✔ Docker follows a **client-server** model with the CLI, API, and Daemon.  
✔ **Docker Daemon** manages containers and images, while the **CLI** provides an interface for users.  
✔ **Networking, storage, and images** are key Docker objects that enable efficient container management.  

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
<A href="./Chapter-05.md">understanding how they work together. </A>
