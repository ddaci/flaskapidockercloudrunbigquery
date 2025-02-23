# flaskapidockercloudrunbigquery

More about this project: https://ddaci.github.io/post/chapter-2/
## 📝 1. Project Description  
The REST API application is built using **Python** and **Flask**, designed to retrieve book data from an **SQLite3** database.  
👉 [GitHub Repository](https://github.com/cpatrickalves/simple-flask-api)

A **REST API** exposes the functionalities of an application or database through a set of **endpoints (URLs)**. These endpoints allow clients (such as web or mobile apps) to perform **CRUD operations** (Create, Read, Update, Delete) via **HTTP requests**.  
The main REST principles rely on HTTP methods:
- **GET** – Retrieve data  
- **POST** – Create new data  
- **PUT/PATCH** – Update existing data  
- **DELETE** – Remove data  

This project demonstrates how to implement and deploy the REST API on **Google Cloud Platform (GCP)**.

---

## 📊 2. Data Model Description  
The database **`books.db`** contains information about books.  
Data is stored and managed using **SQLite**, a lightweight, serverless, file-based **relational database management system** (RDBMS).

---

## 🛠️ 3. Data Storage Solutions and Rationale  
For data storage, we chose **Google Cloud Storage (GCS)** and **BigQuery** for the following reasons:

### 🌤️ **Google Cloud Storage (GCS)**  
- Used to store the **`books.csv`** file generated from the initial SQLite database.  
- Provides **scalability**, **durability**, and **high availability**.  
- Ensures data is **secure**, **easily accessible**, and **cost-efficient**.  

### 🚀 **BigQuery**  
- Chosen for **loading the `books.csv` file** and querying the data.  
- Handles **large structured datasets** efficiently.  
- Supports **fast querying**, enabling quick insights from the datasets.  

Both **GCS** and **BigQuery** integrate seamlessly into the **Google Cloud Platform (GCP)** ecosystem, simplifying development while ensuring scalability and high performance.

---

## ⚙️ 4. Data Model Implementation  
The implementation involves the following GCP services: **App Engine**, **BigQuery**, and **Google Cloud Storage**.

### 🔄 **Workflow Overview:**
1. **User Request:** The user sends an **HTTP request** to the Flask application.  
2. **API Processing:** The **`app.py`** file processes the request and, if necessary, performs **queries in BigQuery**.  
3. **Dependencies:** The **`requirements.txt`** file ensures that all necessary libraries are installed for request processing.  
4. **Configuration:** The **`app.yaml`** file defines how the application is deployed and managed on **App Engine**, including how requests are routed.

---

## 📈 5. System Architecture Diagram  
The following diagram illustrates how users interact with the Flask application and how its components communicate:
![alt text](/images/image4.png "Overview")
**Figure 1:** User interaction flow with the Flask REST API and Google Cloud services.  

---

## 🌟 **Conclusion**  
This project demonstrates how to build a scalable, cloud-based **REST API** using **Flask**, **Google Cloud Storage**, and **BigQuery**.  
It ensures **efficient data storage**, **fast querying**, and **secure access** while leveraging **GCP's powerful ecosystem**.
