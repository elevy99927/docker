### **Chapter 7: Docker Engine and Container Runtimes**  
#### **Title: Understanding Docker Engine & Container Runtimes**  
---

### **🔹 What is Docker Engine?**  
- Docker Engine is the **core component** responsible for **building, running, and managing containers**.  
- It consists of:  
  ✅ **Docker Daemon (dockerd)** – Listens for API requests, manages containers.  
  ✅ **Docker API** – Allows external tools to interact with Docker.  
  ✅ **Docker CLI (Command-Line Interface)** – The primary way to interact with Docker.  

---
### **🖥 How Docker Engine Works**  
1️⃣ A user runs a command:  
   ```sh
   docker run -d nginx
   ```  
2️⃣ The **CLI sends a request** to the Docker API.  
3️⃣ The **Docker Daemon pulls the image** (if not available locally).  
4️⃣ The **Daemon creates and runs the container** based on the image.  

---
### **🔹 What are Container Runtimes?**  
- A **Container Runtime** is responsible for **running and managing containers**.  
- Docker Engine uses **containerd** as its default runtime.  
- Alternative runtimes:  
  - **runc** – Lightweight OCI-compliant runtime.  
  - **gVisor** – Security-focused runtime.  
  - **Kata Containers** – Provides VM-like isolation.  

---
### **🛠 Hands-On Example: Running a Container**  
Example from your GitHub repo:  
👉 **Run MySQL in a container:**  
```sh
docker run -d --name my-mysql -e MYSQL_ROOT_PASSWORD=root mysql
```  
📌 This starts a MySQL container using Docker Engine.  

🔗 **Reference:** [GitHub Example - Docker Commands](https://github.com/elevy99927/docker/tree/main/00-namespaces)  

### **Differences Between `containerd` and `dockerd`**  

| Feature        | `dockerd` (Docker Daemon) | `containerd` (Container Runtime) |
|---------------|--------------------------|--------------------------------|
| **Role**      | Manages the entire Docker lifecycle | Responsible for creating & running containers |
| **Function**  | Handles **images, networking, API, and CLI requests** | Handles **low-level container execution** |
| **Scope**     | Full Docker management, including API | Focused only on container execution and management |
| **Interaction** | Uses `containerd` to run containers | Uses `runc` to start containers |
| **Abstraction Level** | High-level, includes user-friendly commands | Low-level, optimized for performance |

---
### **How `dockerd` Uses `containerd`**  

1️⃣ **User runs a Docker command:**  
   ```sh
   docker run -d nginx
   ```
2️⃣ **Docker CLI sends the request** to `dockerd`.  
3️⃣ **`dockerd` communicates with `containerd`**, requesting a new container.  
4️⃣ **`containerd` handles the execution** of the container using `runc`.  
5️⃣ The container **starts running**, and `dockerd` manages it (logs, networking, volumes).  

---
### **Example: Running Nginx with Docker (`dockerd` → `containerd`)**  
#### **Command:**
```sh
docker run -d --name my-nginx -p 8080:80 nginx
```
#### **Step-by-Step Execution:**  
- **Step 1:** `dockerd` receives the `docker run` request.  
- **Step 2:** It **checks if the image exists** locally; if not, it pulls it from Docker Hub.  
- **Step 3:** `dockerd` forwards the request to `containerd`.  
- **Step 4:** `containerd` **creates a container** based on the Nginx image.  
- **Step 5:** `containerd` calls `runc` to **start the container process**.  
- **Step 6:** The Nginx container runs, accessible on **port 8080**.

 
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
<A href="./Chapter-08.md">How Docker provides process isolation.  </A>
