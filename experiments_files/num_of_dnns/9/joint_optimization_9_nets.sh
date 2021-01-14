#!/bin/bash

for i in {1..5}
do
	echo "$i-th joint optimization"

	python weight_virtualization.py -mode=t -vnn_name=mnist -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=gsc -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=gtsrb -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=cifar10 -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=svhn -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=us8k -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=fmnist -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=esc10 -iter=2000 >> out.log 2>> err.log
	python weight_virtualization.py -mode=t -vnn_name=hhar -iter=2000 >> out.log 2>> err.log

	echo "MNIST performance"
	python weight_virtualization.py -mode=e -vnn_name=mnist | tee -a mnist_accuracy_9_nets.txt
	echo "GSC performance"
	python weight_virtualization.py -mode=e -vnn_name=gsc | tee -a gsc_accuracy_9_nets.txt
	echo "GTSRB performance"
	python weight_virtualization.py -mode=e -vnn_name=gtsrb | tee -a gtsrb_accuracy_9_nets.txt
	echo "CIFAR10 performance"
	python weight_virtualization.py -mode=e -vnn_name=cifar10 | tee -a cifar10_accuracy_9_nets.txt
	echo "SVHN performance"
	python weight_virtualization.py -mode=e -vnn_name=svhn | tee -a svhn_accuracy_9_nets.txt
	echo "US8K performance"
	python weight_virtualization.py -mode=e -vnn_name=us8k | tee -a us8k_accuracy_9_nets.txt
	echo "FMNIST performance"
	python weight_virtualization.py -mode=e -vnn_name=fmnist | tee -a fmnist_accuracy_9_nets.txt
	echo "ESC10 performance"
	python weight_virtualization.py -mode=e -vnn_name=esc10 | tee -a esc10_accuracy_9_nets.txt
	echo "HHAR performance"
	python weight_virtualization.py -mode=e -vnn_name=hhar | tee -a hhar_accuracy_9_nets.txt
	
done