#!/bin/bash

SAMPLE_PYTHON=~/exampleresearch/rnnMusicSeqGenerator/sample.py


EXPERIMENT_PATH=~/exampleresearch/models
OUTPUT_PATH=~/exampleresearch/experiments/generated

NOTES_NUMBER=30

NUMBER_SONGS=100

for i in `seq 1 $NUMBER_SONGS`; do


	DATABASE=control
	SAMPLING=melody


	TYPE_NET=lstm
	NUMBER_LAYERS=3
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING
	TYPE_NET=nas
	NUMBER_LAYERS=3
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING
	TYPE_NET=ugrnn
	NUMBER_LAYERS=3
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING

	#-------------------------------------------------------------------

	DATABASE=interval
	SAMPLING=melody_interval

	TYPE_NET=lstm
	NUMBER_LAYERS=4
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 2 2 -2' --sampling_mode=$SAMPLING
	TYPE_NET=nas
	NUMBER_LAYERS=2
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 2 2 -2' --sampling_mode=$SAMPLING
	TYPE_NET=ugrnn
	NUMBER_LAYERS=4
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 2 2 -2' --sampling_mode=$SAMPLING

	#-------------------------------------------------------------------

	DATABASE=db12
	SAMPLING=melody

	TYPE_NET=lstm
	NUMBER_LAYERS=4
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING
	TYPE_NET=nas
	NUMBER_LAYERS=5
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING
	TYPE_NET=ugrnn
	NUMBER_LAYERS=2
	mkdir $OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}	
	python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/$DATABASE/$TYPE_NET/$TYPE_NET$NUMBER_LAYERS" -n $NOTES_NUMBER --output_uri "$OUTPUT_PATH/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}/${DATABASE}_${TYPE_NET}_${NUMBER_LAYERS}_notes_${NOTES_NUMBER}_${i}.mid" --seed '60 62 64 62' --sampling_mode=$SAMPLING

done