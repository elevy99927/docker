### **Chapter 6: One Image to Many Containers**  
#### **Title: Scaling with Docker – Running Multiple Containers from a Single Image**  
---

### **🔹 How Docker Reuses Images for Multiple Containers**  
- **Docker Images are immutable** – they serve as blueprints for containers.  
- Multiple containers can be **spawned from a single image** without duplicating storage.  
- Containers **share the same image layers**, optimizing disk usage.  
- This is ideal for **scaling applications** in microservices and cloud environments.  

---
### **🛠 Running Multiple Containers from the Same Image**  
- Example: Running three Nginx containers from the same image  
  ```sh
  docker run -d --name web1 nginx
  docker run -d --name web2 nginx
  docker run -d --name web3 nginx
  ```
- Each container runs **independently**, but all use the same **nginx image**.  

---
### **💡 Benefits of Using One Image for Multiple Containers**  
✅ **Efficient Storage** – Containers reuse the same image layers.  
✅ **Faster Deployment** – No need to download the image multiple times.  
✅ **Easy Scaling** – Quickly replicate containers for load balancing.  
✅ **Consistent Environments** – All containers run the same code base.  

---
### **⚠ Considerations for Running Multiple Containers**  
- **Port conflicts** – Containers need unique ports to avoid conflicts.  
  ```sh
  docker run -d -p 8080:80 --name web1 nginx
  docker run -d -p 8081:80 --name web2 nginx
  ```
- **Networking** – Containers must be connected for communication.  
- **Resource Limits** – CPU & memory constraints must be managed.  

---
### **Key Takeaways**  
✔ A single Docker image can be used to run multiple containers **efficiently**.  
✔ Containers **share** the same image layers but operate independently.  
✔ **Scaling** applications is easy with multiple instances of the same container.  

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
<A href="./Chapter-07.md">How Docker manages and runs containers internally.</A>
