# Soluții de implementare a unei aplicații REST API în Google Cloud Platform

## 1. Descrierea temei
Aplicația REST API este realizată în Python și Flask pentru a prelua date despre cărți dintr-o bază de date SQLite3, folosind endpoint-uri pentru operații CRUD. Link către proiect: [Simple Flask API](https://github.com/cpatrickalves/simple-flask-api).

## 2. Modelul de date utilizat
Baza de date `books.db` conține informații despre cărți și este gestionată cu SQLite. Fișierul de date `books.csv` este stocat în Google Cloud Storage și analizat cu BigQuery.

## 3. Soluții pentru stocarea datelor
- **Google Cloud Storage (GCS)**: Stocare scalabilă și securizată pentru fișierul `books.csv`.
- **BigQuery**: Interogarea rapidă a seturilor mari de date.

## 4. Implementarea aplicației
- **App Engine** găzduiește aplicația Flask.
- Solicitările HTTP sunt gestionate de `app.py` și bibliotecile din `requirements.txt`.
- Configurația pentru App Engine se află în `app.yaml`.

**Pași principali:**
1. Fork proiect GitHub.
2. Clonare în Cloud Shell.
3. Implementare cu `gcloud app deploy`.

## 5. Funcționalitățile API-ului
- **Obținere toate cărțile:**  
  `[GET]` [https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/bigquery-data](https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/bigquery-data)

- **Cărți după autor:**  
  `[GET]` [https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/books/by-author?author=David%20Brin](https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/books/by-author?author=David%20Brin)

- **Cărți după an:**  
  `[GET]` [https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/books/by-year?published_year=2005](https://proiectccrefacut.uc.r.appspot.com/api/v2/resources/books/by-year?published_year=2005)

- **Adăugare carte:**  
  `[POST]` [https://projectcloudmasterid.ew.r.appspot.com/api/v2/resources/books](https://projectcloudmasterid.ew.r.appspot.com/api/v2/resources/books)

## 6. Automatizarea trecerii în producție
- **CI/CD cu Cloud Build:** Monitorizare GitHub pentru construirea și implementarea automată.
- **Cloud Run:** Rularea aplicației containerizate folosind Docker.
- **Dockerfile:** Definirea mediului de execuție și a dependințelor.
- **Cloud Build YAML:** Automatizare pentru construirea imaginii și implementarea pe Cloud Run.

## 7. Permisiuni și securitate
- **Conturi de serviciu:** Roluri atribuite pentru Cloud Build, App Engine și BigQuery.
- **Permisiuni:** Artifact Registry Writer, Cloud Build Editor, Storage Admin, Service Account User.

## 8. Monitorizare și SLA
- **Timp de răspuns:** 95% din cereri răspund sub 200 ms.
- **Rată de eroare:** Sub 1%.
- **Disponibilitate:** 99,9%.
- **Succes încărcare în BD:** 99% pentru cererile POST.

## 9. Link-uri utile
- [Aplicația live](https://flask-app-bqrg5cd7tq-de.a.run.app/)
- [BigQuery Endpoint](https://flask-app-bqrg5cd7tq-de.a.run.app/api/v2/resources/bigquery-data)
- [Cărți după autor](https://flask-app-bqrg5cd7tq-de.a.run.app/api/v2/resources/books/by-author?author=David%20Brin)
- [Cărți după an](https://flask-app-bqrg5cd7tq-de.a.run.app/api/v2/resources/books/by-year?published_year=2005)

---

Acest proiect demonstrează utilizarea serviciilor Google Cloud Platform pentru dezvoltarea, implementarea și automatizarea unei aplicații REST API eficiente și scalabile.
