
## Hands-On LAB - Optimizing an Application with Multi-Stage Builds

### **Goal:**  
Refactor an existing Dockerfile to **use multi-stage builds** and **reduce image size**.  

### **Steps:**  

#### **Step 1: Clone the Application Repository**  
```sh
git clone https://github.com/elevy99927/docker.git
cd docker/03-docker-multistage
```

#### **Step 2: Write the Initial Dockerfile (Without Multi-Stage Builds)**  
File name `Dockerfile.regular`

```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
CMD ["node", "server.js"]
```



#### **Step 3: Convert to a Multi-Stage Build**  
Modify the Dockerfile to separate the **build process** from the **final image**.



### **Step 3 Solution**
File name `Dockerfile.multistage`
```dockerfile
# First stage: Build
FROM node:18 AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Second stage: Production
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app ./
COPY --from=builder /app/node_modules ./node_modules
CMD ["node", "server.js"]
```

#### **Step 4: Build and Compare Image Sizes**  
```sh
docker build -t myapp-regular -f Dockerfile.regular .
docker build -t myapp-multistage -f Dockerfile.multistage .
docker images
```
- The **multi-stage build should result in a significantly smaller image size**.  

#### **Step 5: Run the Optimized Container**  
```sh
docker run -d -p 8080:8080 myapp-multistage
```

#### **Step 6: Validate the Container**  
Check that the application is running successfully:  
```sh
curl http://localhost:8080
```

#### **Step 7: Additioanl steps**  
Try to think about additioal steps you can add to your `Dockerfile`, such as:
- Lint
- Code Scan (for example with [Code-cli](https://github.com/cycodehq/cycode-cli) or [Snyk](https://docs.snyk.io/snyk-cli/install-or-update-the-snyk-cli))
- **Add your steps**

---
## License
This project is licensed under the MIT License.

---
## **Contact**
For questions or feedback, feel free to reach out:
- **Email**: eyal@levys.co.il
- **GitHub**: [https://github.com/elevy99927](https://github.com/elevy99927)

