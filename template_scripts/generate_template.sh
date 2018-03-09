#!/bin/bash

EXPERIMENT_PATH='~/experiments'
SAMPLE_PYTHON='~/code/sample.py'

NOTES_NUMBER=30
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm1" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_1_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm2" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_2_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm3" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_3_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm4" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_4_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm5" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_5_notes_$NOTES_NUMBER.mid"

NOTES_NUMBER=100
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm1" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_1_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm2" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_2_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm3" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_3_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm4" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_4_notes_$NOTES_NUMBER.mid"
python $SAMPLE_PYTHON --ckpt_dir="$EXPERIMENT_PATH/lstm5" -n $NOTES_NUMBER --output_uri "$EXPERIMENT_PATH/lstm_5_notes_$NOTES_NUMBER.mid"
