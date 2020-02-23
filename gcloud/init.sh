export GCP_PROJECT=gravitee-kubernetes
export GCP_REGION=europe-west1
export GCP_ZONE=europe-west1-b
export GCP_CLUSTER=demo

gcloud config set project $GCP_PROJECT
gcloud config set compute/region $GCP_REGION
gcloud config set container/cluster $GCP_CLUSTER
gcloud config set filestore/zone $GCP_ZONE
gcloud config set run/region $GCP_REGION

# connect kubectl
gcloud container clusters get-credentials $GCP_PROJECT --zone $GCP_ZONE

# for elastic
kubectl apply -f https://download.elastic.co/downloads/eck/1.0.1/all-in-one.yaml