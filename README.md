# python-flask-example
Code example used in [Building Python applications](https://cloud.google.com/build/docs/building/build-containerize-python). For instructions on running this code sample, see the documentation.

I used this repo in my tutorial [here](https://github.com/apsocarras/gcp_cloud_build_tutorials/tree/main/5_create_and_manage_build_triggers) 

#### Artifact Registry 

`${_ARTIFACT_REGISTRY_REPO}` did not substitute a valid value on its own. I made a repo with this command: 

```bash 
gcloud artifacts repositories create cloud-build-test-repo \
    --repository-format=docker \
    --location=us-east1 \
    --description="Repository for testing/tutorials with cloud build" 
```

And then set it in the cloudbuild.yaml substitutions setting: 

```yaml 
substitutions: 
  _ARTIFACT_REGISTRY_REPO: "cloud-build-test-repo"
```

Make sure all the references to this repo in the cloudbuild.yaml point to the correct region/full resource path. 

#### Service Account 

Create a service account with cloud run service permissions and include it in the cloudbuild.yaml


Here's a command to test the build locally with the Dockerfile 
```bash 
docker build -t us-central1-docker.pkg.dev/my-project/my-repo/myimage:b88d593 .
```

With cloudbuild: 

```bash 
gcloud builds submit --config=cloudbuild.yaml
```
