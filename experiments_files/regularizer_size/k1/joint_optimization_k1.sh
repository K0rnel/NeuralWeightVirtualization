#!/bin/bash

for i in {1..5}
do
	echo "$i-th joint optimization"

	python weight_virtualization_k1.py -mode=t -vnn_name=mnist -iter=2000 >> out_k1.log 2>> err.log

	python weight_virtualization_k1.py -mode=t -vnn_name=gsc -iter=2000 >> out_k1.log 2>> err.log

	python weight_virtualization_k1.py -mode=t -vnn_name=gtsrb -iter=2000 >> out_k1.log 2>> err.log

	python weight_virtualization_k1.py -mode=t -vnn_name=cifar10 -iter=2000 >> out_k1.log 2>> err.log

	python weight_virtualization_k1.py -mode=t -vnn_name=svhn -iter=2000 >> out_k1.log 2>> err.log

	echo "MNIST performance"
	python weight_virtualization_k1.py -mode=e -vnn_name=mnist | tee -a mnist_accuracy_k1.txt
	echo "GSC performance"
	python weight_virtualization_k1.py -mode=e -vnn_name=gsc | tee -a gsc_accuracy_k1.txt
	echo "GTSRB performance"
	python weight_virtualization_k1.py -mode=e -vnn_name=gtsrb | tee -a gtsrb_accuracy_k1.txt
	echo "CIFAR10 performance"
	python weight_virtualization_k1.py -mode=e -vnn_name=cifar10 | tee -a cifar10_accuracy_k1.txt
	echo "SVHN performance"
	python weight_virtualization_k1.py -mode=e -vnn_name=svhn | tee -a svhn_accuracy_k1.txt
	
done