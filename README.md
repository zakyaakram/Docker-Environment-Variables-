# 🐳 Docker Environment Variables Lab

## 📌 Overview

This project demonstrates how to manage environment variables in Docker using three different approaches:

* Dockerfile (default values)
* CLI (`-e` flag)
* `.env` file

---

## 🚀 Technologies Used

* Docker
* Python (Flask)

---

## 📁 Project Structure

```
.
├── Dockerfile
├── app.py
├── .env
└── README.md
```

---

## ⚙️ Dockerfile

```dockerfile
FROM python:3.10-slim

WORKDIR /app
COPY . .

RUN pip install flask

ENV APP_MODE=production
ENV APP_REGION=canada-west

EXPOSE 8080

CMD ["python", "app.py"]
```

---

## 🏗 Build Image

```bash
docker build -t environmentvariables .
```

---

## ▶️ Run Containers

### 1️⃣ Production (Dockerfile default)

```bash
docker run -d -p 5000:8080 --name app-prod environmentvariables
```

---

### 2️⃣ Development (CLI variables)

```bash
docker run -d -p 5001:8080 \
-e APP_MODE=development \
-e APP_REGION=us-east \
--name app-dev environmentvariables
```

---

### 3️⃣ Staging (.env file)

```bash
docker run -d -p 5002:8080 \
--env-file .env \
--name app-staging environmentvariables
```

---

## 🧠 Key Concepts

### 🔹 Environment Variable Priority

```
CLI (-e) > .env file > Dockerfile ENV
```

---

### 🔹 Port Mapping

```
Host Port : Container Port
5000      : 8080
5001      : 8080
5002      : 8080
```

---

## 🔍 Troubleshooting

### Port already in use

```bash
docker ps
```

### Remove container

```bash
docker rm -f <container_name>
```

---

## 🎯 Learning Outcome

* Understand Docker environment variables
* Learn container port mapping
* Practice real DevOps workflow

---

## 👩‍💻 Author

Zakya Akram
