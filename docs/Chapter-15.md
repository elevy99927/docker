### **Slide 15: Docker Volumes & Persistent Storage**  
#### **Title: Managing Data in Docker Containers**  
---

### **🔹 Containers Are Ephemeral**  
- By default, **Docker containers are stateless** – any data stored inside them **is lost** when the container stops or is removed.  
- To persist data, we use **bind mounts or volumes**.

---
### **🔹 Bind Mounts vs. Volumes**  

| Feature | Bind Mounts | Docker Volumes |
|---------|------------|---------------|
| **Definition** | Directly maps a **host directory** to a container | Managed by Docker in `/var/lib/docker/volumes/` |
| **Performance** | Faster, since it uses the host filesystem | Optimized for **Docker container storage** |
| **Portability** | Not portable across machines | Can be backed up and moved |
| **Best Use Case** | Sharing files **between host and container** | Persistent data storage for **databases and applications** |

---

### **🛠 Hands-On Exercise 1: Create a Local Directory & Mount It**  
**Objective:** Use a **bind mount** to share a directory between the host and container.  

#### **Steps:**
1. **Create a directory on the host**  
   ```sh
   mkdir ~/mydata
   ```
2. **Run a container with the directory mounted**  
   ```sh
   docker run -d -v ~/mydata:/data --name my-container alpine sleep 1000
   ```
3. **Write data inside the container**  
   ```sh
   docker exec -it my-container sh -c "echo 'Hello from Docker' > /data/hello.txt"
   ```
4. **Verify the file exists on the host**  
   ```sh
   cat ~/mydata/hello.txt
   ```
✅ **Expected Output:** The file should be accessible **both inside and outside** the container.

---
### **🛠 Hands-On Exercise 2: Create & Use a Docker Volume**  
**Objective:** Use **Docker volumes** for persistent storage.  

#### **Steps:**
1. **Create a Docker volume**  
   ```sh
   docker volume create my-volume
   ```
2. **Run a container using the volume**  
   ```sh
   docker run -d -v my-volume:/appdata --name volume-container alpine sleep 1000
   ```
3. **Write data inside the volume**  
   ```sh
   docker exec -it volume-container sh -c "echo 'Persistent Data' > /appdata/data.txt"
   ```
4. **Check if the data persists after removing the container**  
   ```sh
   docker rm -f volume-container
   docker run --rm -v my-volume:/appdata alpine cat /appdata/data.txt
   ```
✅ **Expected Output:** The data should persist even after recreating the container.

---
### **🛠 Cleanup: Delete All Volumes & Clean the System**  
**Delete all unused volumes:**  
```sh
docker volume prune -f
```
**Remove all stopped containers, images, and networks:**  
```sh
docker system prune -a -f
```
✅ **Expected Result:** The system is cleaned, removing unused data.
---
### **🔹 Backup & Restore Strategies**  
#### **Option 1: Tarball Backup (Recommended)**
✅ **Backup a volume:**  
```sh
docker run --rm -v my-volume:/data -v $(pwd):/backup alpine tar -czf /backup/volume-backup.tar.gz -C /data .
```
✅ **Restore a volume:**  
```sh
docker run --rm -v my-volume:/data -v $(pwd):/backup alpine tar -xzf /backup/volume-backup.tar.gz -C /data
```
🔹 **Why?**  
✔ Compressed storage  
✔ Easily transferable  

---
### **🔗 Hands-On Example: Working with Volumes**  
🔹 **Reference:**  
- **Additional Examples - Managing Persistent Data**: [Docker Volumes](https://github.com/elevy99927/docker/tree/main/02-volumes)  

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
<A href="./Chapter-16.md">
Security, multi-stage builds, and best practices. 

</A>
