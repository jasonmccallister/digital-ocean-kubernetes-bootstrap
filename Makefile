CLUSTER_NAME ?= mccallister-io
DATABASE_ENGINE ?= pg
DATABASE_SIZE ?= db-s-1vcpu-1gb
DATABASE_NODES ?= 1
DEFAULT_REGION ?= nyc1

echo:
	@echo "\n"
	@echo "Displaying Makefile defaults:\n"
	@echo "CLUSTER_NAME: $(CLUSTER_NAME)"
	@echo "DATABASE_ENGINE: $(DATABASE_ENGINE)"
	@echo "DATABASE_SIZE: $(DATABASE_SIZE)"
	@echo "DATABASE_NODES: $(DATABASE_NODES)"
	@echo "DEFAULT_REGION: $(DEFAULT_REGION)"
	@echo "\n"

create-cluster:
	doctl kubernetes cluster create $(CLUSTER_NAME)

kubectl-config:
	doctl kubernetes cluster kubeconfig save $(CLUSTER_NAME)

create-database:
	doctl database create $(CLUSTER_NAME) \
	--engine $(DATABASE_ENGINE) --region $(DEFAULT_REGION) \
	--size $(DATABASE_SIZE) --num-nodes $(DATABASE_NODES)

create-metrics:
	git clone git@github.com:kubernetes/kube-state-metrics.git
	kubectl create -f kube-state-metrics/examples/standard/
	rm -rf kube-state-metrics

get-database:
	doctl database list --format ID,Name

remove:
	doctl kubernetes cluster delete $(CLUSTER_NAME)

setup: create-database create-cluster kubectl-config create-metrics
	# kubectl apply -f cluster/roles.yaml
	# kubectl apply -f cluster/traefik.yaml
