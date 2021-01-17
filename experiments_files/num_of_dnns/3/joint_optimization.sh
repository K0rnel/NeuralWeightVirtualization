#!/bin/bash

for i in {1..5}
do
	echo "$i-th joint optimization"

	python weight_virtualization.py -mode=t -vnn_name=mnist -iter=2000 >> out_three_nets.log 2>> err.log

	python weight_virtualization.py -mode=t -vnn_name=gsc -iter=2000 >> out_three_nets.log 2>> err.log

	python weight_virtualization.py -mode=t -vnn_name=gtsrb -iter=2000 >> out_three_nets.log 2>> err.log

	echo "MNIST performance"
	python weight_virtualization.py -mode=e -vnn_name=mnist | tee -a mnist_accuracy_three_nets.txt
	echo "GSC performance"
	python weight_virtualization.py -mode=e -vnn_name=gsc | tee -a gsc_accuracy_three_nets.txt
	echo "GTSRB performance"
	python weight_virtualization.py -mode=e -vnn_name=gtsrb | tee -a gtsrb_accuracy_three_nets.txt
	
done