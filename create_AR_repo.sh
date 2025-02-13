#!/bin/bash 

gcloud artifacts repositories create cloud-build-test-repo \
    --repository-format=docker \
    --location=us-east1 \
    --description="Repository for testing/tutorials with cloud build" 
