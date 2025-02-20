### **Chaptger 11: ENV vs ARG in Docker Builds**  
#### **Title: Configuring Docker Images with ENV and ARG**  
---

### **🔹 What are ENV and ARG in Docker?**  
Both **ENV** and **ARG** allow you to define **variables** inside a Dockerfile, but they serve different purposes.  

| Feature  | `ARG` | `ENV` |
|----------|------|------|
| **Scope** | Available **only during build time** | Available **at runtime inside the container** |
| **Persistence** | Not available once the container starts | Stays in the container permanently |
| **Use Case** | Passing build arguments (e.g., selecting a base image) | Setting environment variables for applications |
| **Access Method** | Defined with `--build-arg` | Available inside the container automatically |

---
### **🛠 Example: Using `ARG` in a Dockerfile**  
```dockerfile
# 1️⃣ Define a build-time argument
ARG APP_VERSION=1.0 

# 2️⃣ Use it in the build process
FROM ubuntu:${APP_VERSION}
```
👉 **Build with a custom argument:**  
```sh
docker build --build-arg APP_VERSION=latest -t my-app .
```
📌 `APP_VERSION` only exists **during the build process** and is **not accessible inside the running container**.

---
### **🛠 Example: Using `ENV` in a Dockerfile**  
```dockerfile
FROM node:14

# 1️⃣ Set an environment variable
ENV APP_ENV=production  

# 2️⃣ Print the variable when the container runs
CMD echo "Running in $APP_ENV mode"
```
👉 **Run the container:**  
```sh
docker run my-app
```
📌 `ENV` variables **persist inside the container** and can be accessed by the application.

---
### **🔗 Hands-On Example: Using ENV & ARG**  
🔹 **Reference:**  
- **Using `ENV` Variables in Docker Builds**: [GitHub - ENV Example](https://github.com/elevy99927/docker/tree/main/00-docker-file/04-env)  

---
### **🔹 Combining ARG and ENV**  
✅ `ARG` is useful for **dynamic build settings**  
✅ `ENV` is best for **runtime configurations**  
✅ Example combining both:  
```dockerfile
ARG NODE_VERSION=14
FROM node:$NODE_VERSION

ENV APP_ENV=production
```
📌 The **build argument** sets the **Node.js version**, while the **environment variable** sets the **runtime environment**.


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
<A href="./Chapter-12.md">Optimizing Dockerfile efficiency.  
</A>
