### **Chapter 9: Essential Docker Commands**  
#### **Title: Mastering Docker Commands for Container Management**  
---

### **🛠 Key Docker Commands**  

| Command | Description |
|---------|------------|
| `docker pull <image>` | Downloads an image from Docker Hub |
| `docker images` | Lists all available images on the local system |
| `docker run <image>` | Creates and starts a new container from an image |
| `docker ps` | Shows currently running containers |
| `docker ps -a` | Lists all containers (including stopped ones) |
| `docker stop <container>` | Stops a running container |
| `docker rm <container>` | Removes a stopped container |
| `docker rmi <image>` | Deletes a Docker image |

---
### **🔹 Running Your First Container**  
📌 Example: Running an **Nginx Web Server**  
```sh
docker run -d -p 8080:80 --name my-nginx nginx
```
🔹 Starts an Nginx container in detached mode (`-d`)  
🔹 Maps port **8080 on the host** to **port 80 in the container**  
🔹 Names the container **"my-nginx"**  

---
### **🔹 Managing Containers**  
👉 **Check running containers:**  
```sh
docker ps
```
👉 **Stop a container:**  
```sh
docker stop my-nginx
```
👉 **Restart a container:**  
```sh
docker start my-nginx
```
👉 **Remove a container:**  
```sh
docker rm my-nginx
```

---
### **🔹 Managing Images**  
👉 **List available images:**  
```sh
docker images
```
👉 **Remove an image:**  
```sh
docker rmi nginx
```
---

Would you like any refinements before I proceed to **Slide 10: Building Docker Images with Dockerfile**? 🚀
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
<A href="./Chapter-10.md">Automating container creation.  
 </A>
