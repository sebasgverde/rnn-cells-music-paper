#!/bin/bash

EPOCHS=50
SCRIPT_PATH='~/supercomputerexperimentfolder/train.py'
ROOT_FOLDER='~/supercomputerexperimentfolder/db12/lstm'
DATA_DIR='~/datasets/train_DB12_final_cleaned.p'
TRAINING_MODE='melody'
CELL_TYPE='lstm'
BATCH_SIZE=50

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE
