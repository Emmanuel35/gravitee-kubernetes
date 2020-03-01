echo "# Operator for ECK"
call kubectl apply -f https://download.elastic.co/downloads/eck/1.0.1/all-in-one.yaml

set K8S_HOME=../k8s

echo "# Install mongoDB"
call kubectl apply -f %K8S_HOME%/mongodb/ --record
echo "## MongoDB URL"
call minikube service mongo-express --url

echo "# Install elastic"
call kubectl apply -f %K8S_HOME%/elastic/ --record
echo "## Kibana URL"
call minikube service kibana-kb-http --url
echo "## Decode elastic password: (base64)"
call kubectl get secret elasticsearch-es-elastic-user -o=jsonpath='{.data.elastic}'

echo "# Install Gravitee gateway"
call kubectl apply -f %K8S_HOME%/gateway/ --record
echo "## Gravitee Gateway URL"
call minikube service gateway --url

echo "# Install Gravitee management API"
call kubectl apply -f %K8S_HOME%/management-api/ --record
echo "## Gravitee API Management URL"
call minikube service management-api --url

echo "# Install Gravitee management UI"
call kubectl apply -f %K8S_HOME%/management-ui/ --record
echo "## Gravitee Gateway UI"
call minikube service management-ui --url

echo "# Lauch Console"
call minikube dashboard