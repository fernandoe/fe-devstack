DEVSTACK_WORKSPACE ?= $(pwd)/..

export DEVSTACK_WORKSPACE

dev.clone:
	./repo.sh clone
