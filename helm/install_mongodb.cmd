# recuperation de la configuration
# helm show values stable/mongodb > mongodb.yaml

# deploiement
# helm install -f mongodb.yaml mongodb stable/mongodb

# mise à jour
# helm upgrade -f mongodb.yaml mongodb stable/mongodb

kubectl -f ../k8s/mongodb apply