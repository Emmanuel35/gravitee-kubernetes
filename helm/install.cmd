# install stable
helm repo add stable https://kubernetes-charts.storage.googleapis.com/

# install repo gravitee
helm repo add graviteeio https://helm.gravitee.io

# recuperation de la configuration
helm show values graviteeio/apim > gravitee.yaml

# deploiement
helm install -f gravitee.yaml gravitee-apim graviteeio/apim

# mise à jour
helm upgrade -f gravitee.yaml gravitee-apim graviteeio/apim
