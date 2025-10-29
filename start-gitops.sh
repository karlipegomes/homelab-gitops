#!/bin/bash

gcloud iam service-accounts create argocd-reader \
  --display-name "ArgoCD Secret Reader"

gcloud projects add-iam-policy-binding <PROJECT_ID> \
  --member="serviceAccount:argocd-reader@<PROJECT_ID>.iam.gserviceaccount.com" \
  --role="roles/secretmanager.secretAccessor"

gcloud iam service-accounts keys create step-1/argocd/argocd/key.json \
  --iam-account=argocd-reader@<PROJECT_ID>.iam.gserviceaccount.com


cd step-0/argocd
helmfile apply