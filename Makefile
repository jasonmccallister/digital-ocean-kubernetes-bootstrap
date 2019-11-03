CLUSTER_NAME ?= mccallister-dev

cluster:
	doctl kubernetes cluster create ${CLUSTER_NAME}
config:
	doctl kubernetes cluster kubeconfig save ${CLUSTER_NAME}
deploy:
	kubectl apply -f traefik.yaml
metrics:
	git clone git@github.com:kubernetes/kube-state-metrics.git
	kubectl create -f kube-state-metrics/examples/standard/
	rm -rf kube-state-metrics
roles:
	kubectl apply -f roles.yaml
