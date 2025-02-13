#!/bin/bash 

# Grant Artifact Registry Writer role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/artifactregistry.writer"

# Grant Cloud Build Editor role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/cloudbuild.builds.editor"

# Grant Cloud Run Admin role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/run.admin"

# Grant Cloud Run Builder role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/run.builder"

# Grant Cloud Run Invoker role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/run.invoker"

# Grant Storage Object Creator role
gcloud projects add-iam-policy-binding wck-source \
    --member="serviceAccount:cloud-build-service-account@wck-source.iam.gserviceaccount.com" \
    --role="roles/storage.objectCreator"