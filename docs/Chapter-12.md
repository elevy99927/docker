### **Chapter 12: Understanding Docker Build Context & Best Practices**  
#### **Title: Optimizing Docker Builds with Context & Best Practices**  
---

### **🔹 What is Docker Build Context?**  
- The **build context** is the set of files and directories **sent to the Docker Daemon** when running `docker build`.  
- Docker only has access to **files inside the build context** (not outside).  
- Build context is **usually the current directory (`.`)** but can be specified explicitly.  

📌 **Example: Building a Docker image with a specific context**  
```sh
docker build -t my-app .
```
👉 This sends **everything** in the current directory to Docker.  

---
### **⚠ Common Build Context Mistake**  
❌ **Sending unnecessary files** (e.g., `node_modules`, `.git`) increases build time and image size.  
✅ **Solution:** Use `.dockerignore` to exclude large/unneeded files.  

📌 **Example `.dockerignore` file:**  
```plaintext
node_modules/
.git/
*.log
```

---
### **🛠 Best Practices for Writing Dockerfiles**  

| Best Practice | Explanation |
|--------------|------------|
| **Use `.dockerignore`** | Prevents sending unnecessary files in the build context. |
| **Minimize Image Size** | Use small base images (`alpine`, `debian-slim`). |
| **Use Multi-Stage Builds** | Reduces final image size by eliminating build dependencies. |
| **Leverage Layer Caching** | Place frequently changing commands at the **bottom** of the Dockerfile. |
| **Avoid Running as Root** | Improves security (`USER` directive). |

---
### **🔹 Example: Efficient Dockerfile Using Best Practices**  
```dockerfile
# Use a lightweight base image
FROM node:alpine  

# Set the working directory
WORKDIR /app  

# Copy only package.json first (leveraging caching)
COPY package.json .  

# Install dependencies
RUN npm install  

# Copy application files after dependencies
COPY . .  

# Run the application
CMD ["node", "app.js"]
```
📌 **Why is this efficient?**  
- Dependencies are **cached** unless `package.json` changes.  
- Avoids copying unnecessary files (`.dockerignore` is used).  
- Uses a **small base image** to reduce size.  

---
### **🔗 Hands-On Example: Build Context Optimization**  
🔹 **Reference:**  
- **GitHub Example - Build Context & Optimization**: [GitHub - Build Context](https://github.com/elevy99927/docker/tree/main/00-docker-file/03-hidden-file)  


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
<A href="./Chapter-13.md">
Working with Docker Hub & Registry
</A>
