# DevOps Intern Final Assessment

**Name:** Abdelrhman Ahmed
**Date:** July 22, 2026
**Repository:** devops-intern-final

## Project Description

This project demonstrates a complete DevOps workflow using open-source tools including Linux scripting, Docker containerization, CI/CD with GitHub Actions, job deployment with Nomad, and monitoring with Grafana Loki.

---

## Step 1: Git & GitHub Setup

This repository was initialized with:
- `README.md` - Project documentation
- `hello.py` - Sample Python script

---

## Step 2: Linux & Scripting Basics

Located in `scripts/sysinfo.sh`, this script displays system information:
- Current user
- Current date
- Disk usage

**To run:**
```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
```

---

## Step 3: Docker Basics

### Dockerfile
```dockerfile
FROM python:3.9-slim
WORKDIR /app
COPY hello.py .
CMD ["python", "hello.py"]
```

### Build and Run
```bash
docker build -t hello-devops .
docker run hello-devops
```

---

## Step 4: CI/CD with GitHub Actions

**Workflow:** `.github/workflows/ci.yml`

The workflow automatically runs `hello.py` on every push to the repository.

**Status Badge:**
```markdown
![CI](https://github.com/[YOUR_USERNAME]/devops-intern-final/actions/workflows/ci.yml/badge.svg)
```

---

## Step 5: Job Deployment with Nomad

### Nomad Job File
Located at `nomad/hello.nomad`

### Deploy with Nomad
```bash
nomad job run nomad/hello.nomad
```

---

## Step 6: Monitoring with Grafana Loki

See `monitoring/loki_setup.txt` for detailed instructions on:
- Starting Loki locally
- Viewing logs
- Configuration details

---

## Project Structure

```
devops-intern-final/
├── README.md
├── hello.py
├── Dockerfile
├── scripts/
│   └── sysinfo.sh
├── .github/
│   └── workflows/
│       └── ci.yml
├── nomad/
│   └── hello.nomad
└── monitoring/
    └── loki_setup.txt
```

---

## How to Run

1. Clone the repository
2. Run the Linux script: `./scripts/sysinfo.sh`
3. Build Docker image: `docker build -t hello-devops .`
4. Run container: `docker run hello-devops`
5. Deploy with Nomad: `nomad job run nomad/hello.nomad`

---

## Tools Used

- **Git/GitHub** - Version control
- **Linux** - Shell scripting
- **Docker** - Containerization
- **GitHub Actions** - CI/CD
- **Nomad** - Job deployment
- **Grafana Loki** - Log monitoring
