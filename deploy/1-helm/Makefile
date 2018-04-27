all: helm.init install.cert-manager install.nginx-ingress

helm.init:
	helm init

install.cert-manager:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager

install.nginx-ingress:
	helm install stable/nginx-ingress \
	--namespace ms \
	--name nginx-ingress \
	-f nginx-ingress/nginx-ingress.yml
