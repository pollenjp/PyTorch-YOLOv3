SHELL := /bin/bash

.phony : train
train :
	python3 train.py \
		--epochs=30 \
		--batch_size=16 \
		--conf_thres=0.8 \
		--nms_thres=0.4 \
		--n_cpu=0 \
		--img_size=416 \
		--checkpoint_interval=1 \
		--checkpoint_dir="checkpoints" \
		--use_cuda=True
 