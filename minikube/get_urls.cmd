echo "## Kibana URL"
call minikube service kibana-kb-http --url

echo "## Gravitee Gateway URL"
call minikube service gravitee-apim-api --url

echo "## Gravitee API Management URL"
call minikube service gravitee-apim-gateway --url

echo "## Gravitee Gateway UI"
call minikube service gravitee-apim-ui --url

echo "# Lauch Console"
call minikube dashboard