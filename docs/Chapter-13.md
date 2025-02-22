### **Chapter 13: Working with Docker Hub & Registry**  
#### **Title: Managing & Sharing Docker Images**  
---

### **🔹 What is Docker Hub?**  
- Docker Hub is a **cloud-based registry** for storing and sharing Docker images.  
- It provides **public and private repositories** for managing images.  
- Developers can **pull images** from Docker Hub or **push their own**.  

📌 **Example: Pulling an image from Docker Hub**  
```sh
docker pull nginx
```
📌 **Example: Searching for an image**  
```sh
docker search ubuntu
```

---
### **🔹 What is a Docker Registry?**  
- A **Docker Registry** is a storage system for Docker images.  
- Docker Hub is the default public registry, but private registries can be set up using tools like:  
  ✅ **Docker Hub** (Public & Private)  
  ✅ **Jfrog Artifactory**  
  ✅ **Harbor**  
  ✅ **AWS Elastic Container Registry (ECR)**  
  ✅ **Google Container Registry (GCR)**  

📌 **Example: Running a Private Docker Registry**  
```sh
docker run -d -p 5000:5000 --name my-registry registry:2
```
👉 This starts a **self-hosted registry** on port 5000.

---
### **🛠 Pushing & Pulling Images**  
👉 **Preparation:**
Login to <a href="https://hub.docker.com/">https://hub.docker.com/</a> and open new account
You will need use your login name as the repo name

👉 **Step 1: Log in to Docker Hub**  
```sh
docker login
```
👉 **Step 2: Tag your image for Docker Hub**  
Use your login name instead of `elevy99927`

```sh
docker tag my-app elevy99927/my-app:latest
```
👉 **Step 3: Push the image to Docker Hub**  
```sh
docker push elevy99927/my-app:latest
```
👉 **Step 4: Pull the image from any machine**  
```sh
docker pull elevy99927/my-app:latest
```

---
### **🔗 Hands-On Example: Pushing & Pulling Images**  
🔹 **Reference:**  
- **GitHub Example - Using Docker Registries**: [GitHub - Registry Example](https://github.com/elevy99927/docker)  

---
### **🔹 Private vs. Public Registries**  

| Feature | Public (Docker Hub) | Private (Self-Hosted) |
|---------|---------------------|-----------------------|
| **Access** | Available to everyone | Controlled access |
| **Security** | Less control | Full control over images |
| **Cost** | Free (limited) | May require infrastructure |
| **Usage** | Open-source & shared projects | Enterprise deployments |

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
<A href="./Chapter-14.md">
Connecting containers efficiently.  
</A>
