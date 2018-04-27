aks.microservices.list:
	az aks list -o table > output/aks.list.txt; cat output/aks.list.txt;

aks.microservices.destroy:
	az aks delete --name c-microservices --resource-group rg-microservices

aks.microservices.create:
	az aks create \
	    --resource-group rg-microservices \
	    --name c-microservices \
	    --node-count 1 \
	    --node-vm-size Standard_D2_v3 \
	    --kubernetes-version 1.9.2 \
	    --ssh-key-value ~/.ssh/id_rsa_azure.pub > output/c-microservices.json

aks.microservices.get-credentials:
	az aks get-credentials \
	    --resource-group rg-microservices \
	    --name c-microservices
