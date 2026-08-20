# 🛒 GoCart — Dockerized E-Commerce Application

<div align="center">

### A modern multi-vendor e-commerce platform built with Next.js

This project is based on the open-source **GoCart** project by **GreatStackDev** and has been adapted and containerized as part of my DevOps learning and deployment work.

</div>

---

## 📌 Project Overview

**GoCart** is a multi-vendor e-commerce platform built with **Next.js, React, Tailwind CSS, Redux Toolkit, Prisma, and PostgreSQL**.

The application provides separate interfaces for:

* 🛍️ Customers
* 🏪 Sellers / Store owners
* 👨‍💼 Administrators

This repository focuses on containerizing and preparing the application for a modern DevOps deployment workflow using **Docker, Docker Compose, Docker Hub, and Kubernetes**.

---

## ✨ Features

### 🛍️ Customer

* Browse products
* View product details
* Product categories
* Shopping cart
* Address management
* Product ratings and reviews
* Order management
* Responsive UI

### 🏪 Seller

* Seller dashboard
* Product management
* Add products
* Manage product stock
* View orders
* Order status management
* Store information

### 👨‍💼 Admin

* Admin dashboard
* Store approval
* Store management
* Coupon management
* Sales/order overview
* Dashboard statistics

---

## 🛠️ Tech Stack

### Application

* **Next.js 15**
* **React 19**
* **Tailwind CSS**
* **Redux Toolkit**
* **Lucide React**
* **React Hot Toast**
* **Recharts**

### Database

* **PostgreSQL**
* **Prisma ORM**

### DevOps

* **Docker**
* **Docker Compose**
* **Docker Hub**
* **Kubernetes**
* **Git & GitHub**

---

## 🏗️ Project Architecture

```text
                    GoCart
                      │
             ┌────────┴────────┐
             │                 │
          Frontend         Data Layer
             │                 │
          Next.js            Prisma
             │                 │
          React            PostgreSQL
             │
          Redux
             │
       ┌─────┼─────┐
       │     │     │
    Customer Admin Seller
```

### Docker Architecture

```text
                 Docker Compose
                       │
                  ┌────▼────┐
                  │ GoCart   │
                  │ Next.js  │
                  │ Node.js  │
                  └────┬────┘
                       │
                    Port 3000
                       │
                    Browser
```

---

## 🐳 Docker

The application is containerized using Docker.

### Dockerfile

The Docker image:

1. Uses Node.js 20 Alpine
2. Installs dependencies
3. Copies the application
4. Builds the Next.js production application
5. Runs the application as the `node` user
6. Exposes port `3000`

### Build Docker Image

```bash
docker build -t gocart .
```

### Run Docker Container

```bash
docker run -d -p 3000:3000 --name gocart gocart:latest
```

Open:

```text
http://localhost:3000
```

---

## 🐳 Docker Compose

The project also includes Docker Compose configuration.

Start the application:

```bash
docker compose up -d --build
```

Check running services:

```bash
docker compose ps
```

View logs:

```bash
docker compose logs -f gocart
```

Stop the application:

```bash
docker compose down
```

---

## 🐳 Docker Hub

The Docker image can be published to Docker Hub.

Login:

```bash
docker login
```

Tag the image:

```bash
docker tag gocart:latest <YOUR-DOCKERHUB-USERNAME>/gocart:latest
```

Push the image:

```bash
docker push <YOUR-DOCKERHUB-USERNAME>/gocart:latest
```

Pull the image:

```bash
docker pull <YOUR-DOCKERHUB-USERNAME>/gocart:latest
```

Run the Docker Hub image:

```bash
docker run -d -p 3000:3000 <YOUR-DOCKERHUB-USERNAME>/gocart:latest
```

---

## 🗄️ Database

The project contains a Prisma schema designed for PostgreSQL.

The database models include:

```text
User
Product
Store
Order
OrderItem
Rating
Address
Coupon
```

Prisma schema:

```text
prisma/schema.prisma
```

The database connection uses environment variables:

```env
DATABASE_URL=
DIRECT_URL=
```

> ⚠️ Never commit `.env` files containing passwords, database credentials, API keys, or other secrets to GitHub.

---

## 🚀 Local Development

### 1. Clone the repository

```bash
git clone https://github.com/AtulTele/Go-Cart-App.git
cd Go-Cart-App
```

### 2. Install dependencies

```bash
npm install
```

### 3. Configure environment variables

Create a `.env` file:

```env
DATABASE_URL=your_database_url
DIRECT_URL=your_direct_database_url
NEXT_PUBLIC_CURRENCY_SYMBOL=$
```

### 4. Start development server

```bash
npm run dev
```

Open:

```text
http://localhost:3000
```

---

## 📁 Project Structure

```text
Go-Cart-App/
│
├── app/
│   ├── admin/
│   ├── store/
│   ├── (public)/
│   ├── layout.jsx
│   └── StoreProvider.js
│
├── assets/
│
├── components/
│   ├── admin/
│   └── store/
│
├── lib/
│   ├── store.js
│   └── features/
│
├── prisma/
│   └── schema.prisma
│
├── Dockerfile
├── docker-compose.yml
├── package.json
├── package-lock.json
├── next.config.mjs
└── README.md
```

---

## 🔄 DevOps Workflow

The planned deployment workflow for this project is:

```text
Developer
    │
    ▼
Git
    │
    ▼
GitHub
    │
    ▼
Docker Build
    │
    ▼
Docker Image
    │
    ▼
Docker Hub
    │
    ▼
Kubernetes
    │
    ▼
GoCart Application
```

---

# 🙏 Credits & Attribution

This project is based on the open-source **GoCart** project created by **GreatStackDev**.

### Original Repository

**GreatStackDev — GoCart**

https://github.com/GreatStackDev/gocart

The original project provided the foundation for the GoCart e-commerce application, including its application structure, UI, components, and core project implementation.

This repository contains my own work around **Dockerization, Docker Compose, container deployment, DevOps configuration, and deployment preparation**.

Full credit and appreciation to **GreatStackDev** for creating and sharing the original project.

---

## 📜 License

This project follows the license provided by the original GoCart project.

Please see:

```text
LICENSE.md
```

for the applicable license and terms.

---

## 👨‍💻 Author

**AtulTele**

GitHub:

https://github.com/AtulTele

---

## ⭐ Acknowledgements

Special thanks to:

**GreatStackDev**

Original GoCart repository:

https://github.com/GreatStackDev/gocart

If you find this project useful for learning Docker, DevOps, or deployment, consider giving the original project and this repository a ⭐.

---

## 📚 Learning Objectives

This project is being used to practice:

* Next.js application deployment
* Docker image creation
* Docker container management
* Docker Compose
* Docker Hub
* Git & GitHub
* Containerized application deployment
* Kubernetes deployment
* DevOps CI/CD concepts

---

**Built for learning and DevOps practice.**
