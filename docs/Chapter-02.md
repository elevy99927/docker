### **Chapter 2: Why Use Containers Instead of Virtual Machines?**  
#### **Title: Containers vs. Virtual Machines**  
---

### **Traditional Virtual Machines (VMs)**  
- Require a **hypervisor** to manage multiple OS instances.  
- Each VM includes a **full guest operating system**, consuming significant **CPU, RAM, and storage**.  
- **Boot-up time is slow** (minutes) due to OS initialization.  
- Difficult to scale due to **resource-heavy** nature.  

---
### **Docker Containers**  
- Share the **host OS kernel**, avoiding full OS overhead.  
- **Lightweight** and use significantly **less CPU & memory**.  
- **Faster startup** (seconds) since they don’t require OS booting.  
- Highly **scalable**, enabling quick replication and deployment.  

---
### **Comparison: Containers vs. VMs**  

| Feature        | Virtual Machines (VMs) | Docker Containers |
|---------------|-----------------------|-------------------|
| **Architecture** | Runs a full OS per VM | Shares host OS kernel |
| **Startup Time** | Minutes | Seconds |
| **Resource Usage** | High (CPU, RAM, Disk) | Low |
| **Scalability** | Slow & resource-heavy | Fast & lightweight |
| **Portability** | Tied to specific OS/hardware | Runs anywhere |

---
### **Key Takeaways**  
✔ Containers provide **better efficiency, speed, and scalability** than VMs.  
✔ Containers **eliminate environment inconsistencies** across development and production.  
✔ Containers are **ideal for microservices** and modern cloud-based applications.  

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
<A href="./Chapter-03.md">Understanding its advantages and limitations.</A>
