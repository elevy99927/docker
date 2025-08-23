

## **🔹 Container Networking  Advanced-Level Labs**
### **🛠 Lab 3: Setting Up a Reverse Proxy for Multiple Web Services**  
**Objective:** Use **Nginx as a reverse proxy** to route traffic between two web applications inside a custom network.  

#### **Steps:**
1. **Create a custom network**  
   ```sh
   docker network create reverse-proxy-network
   ```
2. **Run two different web servers inside the network**  
   ```sh
   docker run -d --name app1 --network reverse-proxy-network -p 8081:80 nginx:alpine sh -c "sed -i 's/80/8081/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
   docker run -d --name app2 --network reverse-proxy-network -p 8082:80 nginx:alpine sh -c "sed -i 's/80/8082/g' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
   ```
3. **Run an Nginx reverse proxy container**  
   ```sh
   docker run -d --name reverse-proxy --network reverse-proxy-network -p 80:80 nginx
   ```
4. **Modify the Nginx config (inside the container) to route traffic:**  
   ```sh
   docker exec -it reverse-proxy sh
   ```
   - Inside the Nginx container, create a config file `/etc/nginx/conf.d/default.conf`:
     ```
     server {
         listen 80;
         location /app1 {
             proxy_pass http://app1:8081;
         }
         location /app2 {
             proxy_pass http://app2:8082;
         }
     }
     ```
5. **Restart the Nginx reverse proxy**  
   ```sh
   docker restart reverse-proxy
   ```
6. **Access the services via a browser:**  
   - Open `http://localhost/app1` → Should serve content from `app1`  
   - Open `http://localhost/app2` → Should serve content from `app2`  

**Expected Output:** ✅ The **reverse proxy** should correctly route traffic to the respective web servers.

---

### **🛠 Lab 4: Isolating Containers with Macvlan Networking**  
**Objective:** Use **Macvlan networking** to assign containers **unique IP addresses** on the host’s network.  

#### **Steps:**
1. **Create a Macvlan network** (Replace `eth0` with your actual network interface)  
   ```sh
   docker network create -d macvlan \
     --subnet=192.168.1.0/24 \
     --gateway=192.168.1.1 \
     -o parent=eth0 my-macvlan
   ```
2. **Run two containers with their own IP addresses**  
   ```sh
   docker run -d --name container1 --network my-macvlan --ip 192.168.1.100 alpine sleep 1000
   docker run -d --name container2 --network my-macvlan --ip 192.168.1.101 alpine sleep 1000
   ```
3. **Check if the containers can ping each other**  
   ```sh
   docker exec -it container1 ping -c 4 192.168.1.101
   ```
4. **Expected Output:**  
   ✅ The containers should **ping each other successfully**, even though they appear as separate devices on the host’s network.

---

## License
This project is licensed under the MIT License.

---
## **Contact**
For questions or feedback, feel free to reach out:
- **Email**: eyal@levys.co.il
- **GitHub**: [https://github.com/elevy99927](https://github.com/elevy99927)
