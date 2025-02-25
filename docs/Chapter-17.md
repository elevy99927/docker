# **Chapter 17: Multi-Stage Builds**  

### **Objective:**  
This chapter focuses on **multi-stage builds**, this technique allows Docker users to **reduce image size, improve security, and optimize performance** by separating the build image(s) and the runtime image into two steps. 
---

## **Section 1: Understanding Multi-Stage Builds**  

### **Why Use Multi-Stage Builds?**  
- Traditional Docker images often contain **unnecessary dependencies** that increase image size.  
- Large images take longer to **pull, push, and deploy**, affecting CI/CD pipelines.  
- Multi-stage builds allow developers to **keep only what is necessary** for the final image.  
- By separating build and runtime environments, security risks are reduced.  

### **How Multi-Stage Builds Work**  
- A **Dockerfile with multiple FROM instructions** is used to create different build stages.  
- Intermediate build steps are **discarded**, and only the necessary output is copied to the final image.  
- This process **removes development dependencies**, keeping the final image lightweight.  

Example of a traditional Dockerfile without multi-stage builds:  
```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "server.js"]
```
This image contains **both build dependencies and runtime dependencies**, making it larger than necessary.  

---

## **Section 2: Writing a Multi-Stage Dockerfile**  

### **Basic Multi-Stage Build Example**  
```dockerfile
# First stage: Build
FROM node:18 AS builder
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# Second stage: Production image
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
CMD ["node", "dist/server.js"]
```

### **Explanation of the Multi-Stage Build**  
- The first **FROM** statement creates a **builder image** with all development dependencies.  
- The **final image** starts from a **minimal base image (node:18-alpine)**, keeping only the required files.  
- The unnecessary dependencies from the first stage **are not included in the final image**.  

---

## **Section 3: Best Practices for Multi-Stage Builds**  

### **Use Minimal Base Images for Production**  
- Use **distroless or alpine-based images** instead of full operating systems.  
- Example:  
  ```dockerfile
  FROM node:18-alpine
  ```
- This reduces attack surface and improves performance.  

### **Keep Dependencies Separate**  
- Only **copy necessary files** into the final image.  
- Avoid copying `.git`, `node_modules`, and other unnecessary files.  
- Use a `.dockerignore` file to prevent large files from being included.  

Example of a `.dockerignore` file:  
```
node_modules/
.git/
.env
Dockerfile
```

### **Use Multi-Stage Builds for Compiled Languages**  
- For compiled applications like **Go, Java, or Rust**, the first stage compiles the application, while the second stage runs it.  
- Example for a **Go application**:  
  ```dockerfile
  # First stage: Build
  FROM golang:1.19 AS builder
  WORKDIR /app
  COPY . .
  RUN go build -o myapp

  # Second stage: Production
  FROM alpine:latest
  COPY --from=builder /app/myapp /usr/local/bin/
  CMD ["myapp"]
  ```
- The final image only contains the **compiled binary**, without Go dependencies.  

---

## **Section 4: Hands-On Exercise - Optimizing an Application with Multi-Stage Builds**  

### **Goal:**  
Refactor an existing Dockerfile to **use multi-stage builds** and **reduce image size**.  

### **Steps:**  

#### **Step 1: Clone the Application Repository**  
```sh
git clone https://github.com/elevy99927/docker-multistage-example.git
cd docker-multistage-example
```

#### **Step 2: Write the Initial Dockerfile (Without Multi-Stage Builds)**  
```dockerfile
FROM node:18
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build
CMD ["node", "dist/server.js"]
```

#### **Step 3: Convert to a Multi-Stage Build**  
Modify the Dockerfile to separate the **build process** from the **final image**:  
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
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
CMD ["node", "dist/server.js"]
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
deploying a complete application with best practices
</A>
