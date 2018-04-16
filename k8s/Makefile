helm.init:
	helm init

install.cert-manager:
	helm install \
		--name cert-manager \
		--namespace kube-system \
		--set rbac.create=false \
		stable/cert-manager

install.nginx-ingress.ms:
	helm install stable/nginx-ingress --name fe

namespace.fe:
	kubectl config set-context `kubectl config current-context` --namespace=fe

apply:
	kubectl apply --recursive -f .
