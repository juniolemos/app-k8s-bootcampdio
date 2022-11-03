Echo "Criando Imagens "
docker build -t juniolemos/projeto-back:1.0 backend/.
docker build -t juniolemos/database:1.0 database/.

echo "Realizando Push"

docker push juniolemos/projeto-back:1.0
docker push juniolemos/database:1.0

#cluster
echo "Criando Serviço"

kubectl apply -f services.yml

echo "Criando Deployment"
kubectl apply -f ./deployment.yml
