#!/bin/bash

SAMPLEDIR='~/code/sample.py'	
SAVEDIR='~/experiments/test'
TRAINDIR='~/code/train.py'

echo 'control'
python $TRAINDIR --save_dir $SAVEDIR --log_dir $SAVEDIR --data_dir '~/datasets/pickles/train/train_final_cleaned.p' --num_epochs 1 --batch_size 10 --training_mode='melody'

echo 'base case'
python $SAMPLEDIR --ckpt_dir=$SAVEDIR -n 30 --output_uri '$SAVEDIR/output_control.mid' --seed '60 62 64 62' --sampling_mode='melody'


echo 'interval'
python $TRAINDIR --save_dir $SAVEDIR --log_dir $SAVEDIR --data_dir '~/datasets/pickles/train/train_intervals_final_cleaned.p' --num_epochs 1 --batch_size 10 --training_mode='melody_interval'

echo 'interval'
python $SAMPLEDIR --ckpt_dir=$SAVEDIR -n 30 --output_uri '$SAVEDIR/output_interval.mid' --seed '60 2 2 -2' --sampling_mode='melody_interval'

echo 'DB12'
python $TRAINDIR --save_dir $SAVEDIR --log_dir $SAVEDIR --data_dir '~/datasets/pickles/train/train_DB12_final_cleaned.p' --num_epochs 1 --batch_size 10 --training_mode='melody'

echo 'DB12'
python $SAMPLEDIR --ckpt_dir=$SAVEDIR -n 30 --output_uri '$SAVEDIR/output_DB12.mid' --seed '60 62 64 62' --sampling_mode='melody'

echo "words"
python $TRAINDIR --save_dir $SAVEDIR --log_dir $SAVEDIR --data_dir '~/datasets/sebastian_lyrics_data' --num_epochs 300 --batch_size 10 --training_mode='words' --data_style 'folder'

echo "words"
python $SAMPLEDIR --ckpt_dir=$SAVEDIR -n 30 --output_uri '$SAVEDIR/output.txt' --sampling_mode='words' --seed 'estoy mal sombras en la muerte'
