# Sequence Generation using Deep Recurrent Networks: A study case in music.
Songs, code and datasets to replicate the research and the specific reuslts of the paper
[Paper]() [Github](https://github.com/sebasgverde/rnn-cells-music-paper)
---

## Abstract
Automatic generation of sequences is a highly explored field in the last years. In particular, natural language processing and automatic music composition have gained importance due to the recent advances in machine learning and Neural Networks with intrinsic memory mechanisms such as Recurrent Neural Networks. This paper evaluates different types of memory mechanisms (memory cells) and analyze their performance in the field of music composition. The proposed approach considers music theory concepts such as transposition, and data transformations (embeddings) improve the quality of the generated melodies. The performance of the proposed architecture is evaluated using quantitative metrics to measure the tonality of a musical composition. 

---
## Datasets and Pretrained Models
[Datasets](https://www.dropbox.com/sh/xyr47x5ck48krvx/AAAprJDo2at6AlEiWVp-U9cqa?dl=0)
[Network Weigths]()

---

## Demos

## Research Replication
Note: All is done asuming you are in your home directory

Create a root folder and clone the scripts and model repositories:
```
mkdir exampleresearch
cd exampleresearch
git clone https://github.com/sebasgverde/rnn-cells-music-paper.git
git clone https://github.com/sebasgverde/rnnMusicSeqGenerator.git
```

create a virtual env using the requierements in rnnMusicSeqGenerator
```
mkvirtualenv exampleresearchmusic
pip install -r ~/exampleresearch/rnnMusicSeqGenerator/requirements.txt
```

For this two special libraries which were developed by me you have two options, I recommend to install them also in the virtual env
```

pip install music_geometry_eval
pip install midi_manager
```

but you can also clone the repositories and use them as normal packages
```
git clone https://github.com/sebasgverde/music-geometry-eval.git
git clone https://github.com/sebasgverde/midi-manager.git
```

Download the datasets:
```
mkdir dataset
wget -N https://www.dropbox.com/sh/xyr47x5ck48krvx/AAAprJDo2at6AlEiWVp-U9cqa?dl=1 -O dataset.zip
unzip dataset.zip -d dataset/
rm dataset.zip 
```

Run the script which akes 45 experiements (the 3 dataset variations, with the 3 cell types and number of layers from 1 to 5)
```
./rnn-cells-music-paper/paper_scripts/bashlayerscompleteexperimet.sh 
```
This will create the folder models

```
```
```
```
```
```
```
```
dataset metrics
generated songs
complete layers
cost function val
embeddings
### Code
[Paper scripts](https://github.com/sebasgverde/rnn-cells-music-paper)
[RNN model](https://github.com/sebasgverde/rnnMusicSeqGenerator)
[Library for midi manipulation](https://github.com/sebasgverde/music-geometry-eval)
[Library for music evaluation](https://github.com/sebasgverde/midi-manager)

---

all is like 

```
python $SCRIPT_PATH --save_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --log_dir "$ROOT_FOLDER/$CELL_TYPE$NUM_LAYERS" --data_dir=$DATA_DIR  --num_epochs $EPOCHS --batch_size $BATCH_SIZE --training_mode=$TRAINING_MODE --num_layers=$NUM_LAYERS --model=$CELL_TYPE
```
