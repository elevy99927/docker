### **Chapter 8: Namespaces & Cgroups**  
#### **Title: How Docker Provides Process Isolation**  
---

### **🔹 What are Namespaces?**  
Namespaces are a **Linux kernel feature** that provides **isolation** for different aspects of system resources.  
Each container gets its own **namespace**, making it appear as if it's running on a separate system.  

---
### **🛠 Key Docker Namespaces**  

| Namespace | Purpose |
|-----------|---------|
| **PID (Process ID)** | Isolates process trees (each container has its own PID space) |
| **NET (Networking)** | Gives each container its own network stack (IP, ports, routes) |
| **MNT (Mounts)** | Provides isolated file system views |
| **UTS (Hostname)** | Allows containers to have their own hostname |
| **IPC (Interprocess Communication)** | Ensures shared memory and messaging are container-specific |

📌 **Example:**  
👉 Run a container and check its process isolation:  
```sh
docker run -d --name test-container ubuntu sleep 1000
ps aux | grep sleep
```
🔹 The process runs inside the container, isolated from the host.

---
### **🔹 What are Cgroups (Control Groups)?**  
Cgroups **limit and monitor** system resources for containers.  
They prevent containers from **consuming too much CPU, RAM, or disk I/O**.  

---
### **🛠 Cgroups in Action**  

| Resource | Controlled by Cgroups? |
|----------|----------------------|
| **CPU** | ✅ Limits how much CPU a container can use |
| **Memory** | ✅ Restricts RAM allocation per container |
| **Disk I/O** | ✅ Controls read/write speed for storage |
| **Network Bandwidth** | ✅ Can restrict network usage |

📌 **Example:**  
👉 Limit memory usage to **256MB** for a container:  
```sh
docker run -d --memory=256m --name limited-container ubuntu sleep 1000
```

---
### **🔗 Hands-On Exercise: Namespaces Example**  
🔹 **Reference:** [GitHub Example - Namespaces](https://github.com/elevy99927/docker/tree/main/00-namespaces)  


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
<A href="./Chapter-09.md"> Running and managing containers efficiently.</A>
