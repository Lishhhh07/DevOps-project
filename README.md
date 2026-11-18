# Quote API DevOps Project

A small Java REST API taken through Git, Maven, Jenkins, Ansible, Docker and Kubernetes.

Author: Lishika Meghani  
USN: 1MS24CI065  
Course: DevOps (25CIAEC59)

Repository: https://github.com/Lishhhh07/DevOps-project

## Run locally

```sh
mvn clean package
java -jar target/quote-api.jar
```

| Route | Response |
| --- | --- |
| `GET /quotes` | Three quotes as JSON |
| `GET /quotes/random` | One random quote |
| `GET /health` | `{"status":"UP"}` |

The app uses Java 17, Spring Boot and an in-memory list. It has no database or frontend.

## Pipeline

`Git -> Jenkins tests -> Maven JAR -> Ansible service / Docker -> Kubernetes -> scale 3 to 5 to 3`

- **Component 1:** Maven build, Jenkins SCM polling, JUnit test stage and archived JAR.
- **Component 2:** Ansible role with variables and restart handler, Docker image, Kubernetes Deployment and Service, manual scaling, health probes and ConfigMap settings.

Follow [the setup and demo guide](docs/setup.md) for Jenkins, Ansible, Docker and Kubernetes commands. See [the requirements checklist](docs/requirements.md) for coverage.

All **21 screenshot checklist items** are available in [evidences](evidences/README.md), with a numbered index, preview and the recorded command outputs.

The completed [institutional report](reports/DevOps_Report_Lishika_Meghani.pdf) includes both components in the supplied college format, with the actual code and evidence. Its editable [LaTeX source](reports/overleaf/main.tex) is ready for Overleaf. Signatures and evaluator marks remain blank.
