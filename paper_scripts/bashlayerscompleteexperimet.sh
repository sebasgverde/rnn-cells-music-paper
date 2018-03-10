#!/bin/bash
# control case
EPOCHS=300
SCRIPT_PATH=~/exampleresearch/rnnMusicSeqGenerator/train.py
SAVE_FOLDER=~/exampleresearch/models/control
DATA_DIR=~/exampleresearch/dataset/train_final_cleaned.p
TRAINING_MODE='melody'
CELL_TYPE='lstm'
BATCH_SIZE=50

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='nas'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='ugrnn'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

# intervals
#EPOCHS=300
SCRIPT_PATH=~/exampleresearch/rnnMusicSeqGenerator/train.py
SAVE_FOLDER=~/exampleresearch/models/interval
DATA_DIR=~/exampleresearch/dataset/train_intervals_final_cleaned.p
TRAINING_MODE='melody_interval'
CELL_TYPE='lstm'
#BATCH_SIZE=50

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='nas'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='ugrnn'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

# DB12
EPOCHS=50
SCRIPT_PATH=~/exampleresearch/rnnMusicSeqGenerator/train.py
SAVE_FOLDER=~/exampleresearch/models/db12
DATA_DIR=~/exampleresearch/dataset/train_DB12_final_cleaned.p
TRAINING_MODE='melody'
CELL_TYPE='lstm'
#BATCH_SIZE=50

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='nas'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

CELL_TYPE='ugrnn'

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --log_dir "$SAVE_FOLDER/$CELL_TYPE/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE
