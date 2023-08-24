# My Java Application

This README provides instructions on building and running the application locally as a standalone Java application and inside a Docker container on a Windows system. It also includes steps for deploying the Docker container.

## Prerequisites

- Java JDK 17 (or your preferred version)
- Docker for Windows

## Building and Running Locally

### As a Java Application

1. **Build** the project:
   ```./gradle build```

2. **Run** the application:
   ```./gradlew bootRun```

### Inside a Docker Container

1. **Build** a Docker image:
   ```docker build -t your-image-name:your-tag .```

2. **Run** the application inside a Docker container:
   ```docker run -p 8080:8080 your-image-name:your-tag```

> Note: The `-p 8080:8080` maps port 8080 inside the container to port 8080 on your local machine. Adjust if your application runs on a different port.

## Deploying the Docker Container

1. **Tag** the Docker image for Google Container Registry (GCR) or another registry:
   ```docker tag your-image-name:your-tag gcr.io/your-gcp-project-id/your-image-name:your-tag```

2. **Push** the Docker image to GCR:
   ```gcloud docker -- push gcr.io/your-gcp-project-id/your-image-name:your-tag```

3. **Deploy** (example for Kubernetes):
   
   First, create or update your Kubernetes manifests, and then:
   ```kubectl apply -f your-kubernetes-manifest.yaml```

## Additional Notes

- Ensure Docker for Windows is running when executing Docker commands.
- If using a different container registry (like Docker Hub), adjust the tagging and pushing commands accordingly.
