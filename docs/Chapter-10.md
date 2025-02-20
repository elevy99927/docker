### **Chapter 10: Building Docker Images with Dockerfile**  
#### **Title: Automating Container Creation with Dockerfile**  
---

### **🔹 What is a Dockerfile?**  
A **Dockerfile** is a script containing **instructions** to automate the process of creating a Docker image.  
It defines:  
✅ The **base image** (e.g., Ubuntu, Alpine, Node.js)  
✅ Dependencies and packages to install  
✅ Configuration and environment settings  
✅ Commands to run when the container starts  

---
### **🛠 Basic Structure of a Dockerfile**  
Example: **Simple Dockerfile for Nginx**  
```dockerfile
# 1️⃣ Use an official Nginx image as the base
FROM nginx:latest  

# 2️⃣ Copy custom HTML files into the container
COPY ./html /usr/share/nginx/html

# 3️⃣ Expose port 80 for web traffic
EXPOSE 80  

# 4️⃣ Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
```

---
### **🔹 Building and Running a Custom Image**  
👉 **Step 1: Build the image**  
```sh
docker build -t my-nginx .
```
👉 **Step 2: Run a container from the image**  
```sh
docker run -d -p 8080:80 my-nginx
```
👉 **Step 3: Verify the running container**  
```sh
docker ps
```

---
### **🔹 Hands-On Example: Creating a Custom Docker Image**  
🔹 **Reference:**  
- **Simple Dockerfile Example**: [GitHub - Simple Dockerfile](https://github.com/elevy99927/docker/tree/main/00-docker-file/01-simple-dockerfile)  
- **Using ENV Variables in Dockerfile**: [GitHub - ENV Example](https://github.com/elevy99927/docker/tree/main/00-docker-file/04-env)  
- **Handling Hidden Files in Docker Builds**: [GitHub - Hidden Files Example](https://github.com/elevy99927/docker/tree/main/00-docker-file/03-hidden-file)  

---
### **🔹 Understanding Dockerfile Instructions**  

| Instruction | Purpose |
|-------------|---------|
| `FROM` | Defines the **base image** |
| `RUN` | Executes **commands inside the container** (e.g., install packages) |
| `COPY` | Copies files from **host** to **container** |
| `WORKDIR` | Sets the **working directory** inside the container |
| `ENV` | Defines **environment variables** |
| `EXPOSE` | Specifies the **port** the container listens on |
| `CMD` | Defines the **default command** that runs when the container starts |

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
<A href="./Chapter-11.md">How to pass configuration at build and runtime.  
</A>
