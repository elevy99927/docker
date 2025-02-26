# **Chapter 18: Local image repositorys**  

## **What Are Local Repositories?**
- A **local repository** is a storage location within a private environment where software artifacts, such as binaries, dependencies, and container images, are stored and managed. 
- Unlike remote repositories, which pull artifacts from public sources (eg. docker.io), a local repository allows for better **control, security, and efficiency** within your organization perimiter.
[wikipedia](https://en.wikipedia.org/wiki/Software_repository)

## **Why Do We Need Local Repositories?**
1. **Faster Dependency Resolution** – Reduces download times by caching artifacts locally.
2. **Improved Security** – Prevents unverified external dependencies from being used.
3. **Version Control and Backup** – Ensures artifact consistency and rollback capabilities.
4. **Reliable Offline Access** – Enables development even in restricted or disconnected environments.
5. **Optimized CI/CD Pipelines** – Reduces build times and enhances deployment reliability.
6. **Custom Artifact Management** – Hosts proprietary packages and container images.
7. **Cost Reduction** – Lowers bandwidth usage by eliminating redundant external downloads.

---

## **Lab Overview**
This lab consists of exercises that guide users through **setting up, configuring, and using a local repository** within JFrog Artifactory. 
The exercises focus on **creating remote, local, and virtual repositories** for Docker images, ensuring efficient artifact management.

1. Installing and Configuring JFrog Container Repository (JCR)
2. Configuring Remote and Local Docker Repositories
3. Pushing and Pulling Docker Images via JFrog Artifactory
4. Security Enhancements in JFrog

**Link to Lab**
[Exercise: Installing and Testing JFrog Container Repository (JCR)](https://github.com/elevy99927/Jenkins-k8s/tree/main/Part2-repo/02-Jfrog-JCR)

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
<A href="https://github.com/elevy99927/k8s">
Intro to Kubernetes
</A>
