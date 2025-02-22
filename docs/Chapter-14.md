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


### **🔹 Host vs. Bridge Networking**  

| Feature | Bridge Network | Host Network |
|---------|--------------|-------------|
| **Isolation** | Containers isolated | No isolation (uses host network) |
| **Performance** | NAT translation overhead | Faster (direct access to host) |
| **Security** | More secure | Less secure (host exposed) |
| **Port Mapping** | Required (`-p`) | Not needed |

📌 **Use `host` networking for low-latency applications** but prefer `bridge` for security.

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


---
### **🔹 Creating a Custom Network for Container Communication**  
To allow containers to communicate, create a **user-defined bridge network**.

📌 **Example: Create a network & connect containers**  
```sh
docker network create my-network
docker run -d --name container1 --network my-network alpine sleep 1000
docker run -d --name container2 --network my-network alpine sleep 1000
docker exec -it container1 ping container2
```
👉 **Expected Result:** ✅ Ping will work because both containers are on the same **custom network**.

---
### **🛠 Hands-On Exercises: Docker Networking**  
#### **Exercise 1: Ping Containers in Default Network (Fails)**
1. Run two containers with the default network.  
2. Try pinging from `container1` to `container2`.  
3. Observe that the ping fails.  

#### **Exercise 2: Create a Custom Network & Ping (Works)**
1. Create a new network.  
2. Attach both containers to the same network.  
3. Try pinging again – it should work!  

---

### **🔹 Exposing a Service on a Network**  
If a container needs to be **accessible externally**, it must expose its ports.

📌 **Example: Run an Nginx server on a custom network**  
```sh
docker network create web-network
docker run -d --name web-server --network web-network -p 8080:80 nginx
```
👉 Now, you can access the web server at **http://localhost:8080**.

---
### **🔹 Hands-On Example: Custom Networking**  
🔹 **Reference:**  
- **Additional Examples - Networking in Docker**: [Docker Networking Examples](https://github.com/elevy99927/docker/blob/main/02-networking/Medium-Level-Networking.md)  

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
<A href="./Chapter-15.md">
Managing persistent data in containers.  

</A>


