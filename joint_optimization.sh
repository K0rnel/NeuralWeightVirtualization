#!/bin/bash

for i in {1..5}
do
	echo "$i-th joint optimization"

	python weight_virtualization.py -mode=t -vnn_name=mnist -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=gsc -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=gtsrb -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=cifar10 -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=svhn -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=us8k -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=fmnist -iter=2000

	python weight_virtualization.py -mode=t -vnn_name=hhar -iter=2000

	echo "MNIST performance"
	python weight_virtualization.py -mode=e -vnn_name=mnist
	echo "GSC performance"
	python weight_virtualization.py -mode=e -vnn_name=gsc
	echo "GTSRB performance"
	python weight_virtualization.py -mode=e -vnn_name=gtsrb
	echo "CIFAR10 performance"
	python weight_virtualization.py -mode=e -vnn_name=cifar10
	echo "SVHN performance"
	python weight_virtualization.py -mode=e -vnn_name=svhn
	echo "US8K performance"
	python weight_virtualization.py -mode=e -vnn_name=us8k
	echo "FMNIST performance"
	python weight_virtualization.py -mode=e -vnn_name=fmnist
	echo "HHAR performance"
	python weight_virtualization.py -mode=e -vnn_name=hhar
	
done
