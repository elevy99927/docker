### **Chapter 14: Docker Networking**  
#### **Title: Connecting Containers with Docker Networking**  
---

### **🔹 What is Docker Networking?**  
Docker provides **built-in networking capabilities** that allow containers to **communicate** with each other and the outside world.  
Each container gets its own **isolated network stack** but can be connected using Docker’s network types.  

---
### **🛠 Types of Docker Networks**  

| Network Type | Description | Use Case |
|-------------|------------|----------|
| **Bridge** (default) | Isolated container network with NAT for external access | Standard container networking |
| **Host** | Container shares host’s network namespace (no isolation) | High-performance local apps |
| **None** | No network interface (completely isolated) | Security-sensitive workloads |
| **Overlay** | Network for multi-host communication (Swarm/Kubernetes) | Distributed applications |
| **Macvlan** | Assigns MAC addresses to containers (like physical devices) | Network virtualization |

---
### **🔹 Bridge Network (Default)**  
- Containers can communicate **within the same network** but need **port mapping** to expose services externally.  
- Example: Running two containers on a bridge network  
```sh
docker network create my-bridge
docker run -d --name app1 --network my-bridge nginx
docker run -d --name app2 --network my-bridge alpine sleep 1000
```
- **Test connection:**  
```sh
docker exec -it app2 ping app1
```
📌 Containers **can communicate** because they share the same bridge network.

---
### **🔹 Exposing a Container to the Host**  
- Containers don’t expose ports automatically. You need to map them using `-p`.  
- Example: Running a web server on port 8080  
```sh
docker run -d -p 8080:80 nginx
```
👉 The container’s **port 80** is mapped to **port 8080** on the host.

---
### **🔹 Hands-On Example: Custom Networking**  
🔹 **Reference:**  
- **Additional Example - Networking in Docker**: [Docker Networking Example](https://github.com/elevy99927/docker/02-networking/Medium-Level-Networking.md)  

---
### **🔹 Host vs. Bridge Networking**  

| Feature | Bridge Network | Host Network |
|---------|--------------|-------------|
| **Isolation** | Containers isolated | No isolation (uses host network) |
| **Performance** | NAT translation overhead | Faster (direct access to host) |
| **Security** | More secure | Less secure (host exposed) |
| **Port Mapping** | Required (`-p`) | Not needed |

📌 **Use `host` networking for low-latency applications** but prefer `bridge` for security.

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
<A href="./Chapter-2.md">
Managing persistent data in containers.  

</A>
