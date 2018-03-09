#!/bin/bash

EPOCHS=300
SCRIPT_PATH='~/code/train.py'
ROOT_FOLDER='~/experiments/general_music'
DATA_DIR='~dataset/example.p'
TRAINING_MODE='melody'
CELL_TYPE='nas'
BARCH_SIZE=10

NUM_LAYERS=1
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=2
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=5
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE
#!/bin/bash

CELL_TYPE='ugrnn'
NUM_LAYERS=3
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE

NUM_LAYERS=4
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BARCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE


