### **Slide 7: Docker Engine and Container Runtimes**  
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

---
### **🔹 Why Choose the Right Container Runtime?**  
✔ **Performance** – Some runtimes are optimized for speed.  
✔ **Security** – Sandboxed runtimes like gVisor provide stronger isolation.  
✔ **Compatibility** – Not all runtimes support every feature of Docker.  

---
### **Key Takeaways**  
✔ Docker Engine **manages** containers using **container runtimes** like **containerd**.  
✔ The **CLI, API, and Daemon** work together to run containers efficiently.  
✔ Choosing the right runtime **depends on performance, security, and compatibility needs**.  
 
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
<A href="./Chapter-8.md">How Docker provides process isolation.  </A>
