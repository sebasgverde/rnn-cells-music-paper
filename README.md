# Sequence Generation using Deep Recurrent Networks: A study case in music.
Songs, code and datasets to replicate the research and the specific reuslts of the paper

[Paper]() [Github](https://github.com/sebasgverde/rnn-cells-music-paper)

## Abstract
Automatic generation of sequences is a highly explored field in the last years. In particular, natural language processing and automatic music composition have gained importance due to the recent advances in machine learning and Neural Networks with intrinsic memory mechanisms such as Recurrent Neural Networks. This paper evaluates different types of memory mechanisms (memory cells) and analyze their performance in the field of music composition. The proposed approach considers music theory concepts such as transposition, and data transformations (embeddings) improve the quality of the generated melodies. The performance of the proposed architecture is evaluated using quantitative metrics to measure the tonality of a musical composition. 

---
## Datasets and Pretrained Models

[Datasets](https://www.dropbox.com/sh/xyr47x5ck48krvx/AAAprJDo2at6AlEiWVp-U9cqa?dl=0)

[Network Weigths]()

---

## Demos
#### Final models representative songs
[![](https://sebasgverde.github.io/rnn-cells-music-paper/images/generated_songs_demo.png)](https://youtu.be/FGUIEshh6WU)

#### Training evolution
[![](https://sebasgverde.github.io/rnn-cells-music-paper/images/cost_validation_songs_demo.png)](https://youtu.be/sIUu5mYU0l8)

![Image example](https://sebasgverde.github.io/balancedBinaryTrees/partsGUI.png)

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

You can also make some unit test to the pickles
```
python rnn-cells-music-paper/paper_scripts/unittestdatacreation.py -v
```

#### Optimal number of layers
Run the script which makes 45 experiements (the 3 dataset variations, with the 3 cell types and number of layers from 1 to 5), time will depend on the GPU hardware, in an Nvidia m1000 it takes around a week
```
./rnn-cells-music-paper/paper_scripts/bashlayerscompleteexperimet.sh 
```
This will create the folder models, with all the models separated in folders by dataset and cell type.

It is time now to get the learning curves graphs to reduce the research to 9 models. Use this command for each combination of dataset-cell:
```
tensorboard --log_dir models/control/lstm/ 
```
In the "Scalars" of tensorboard you will see a graph like this:
[insert image here]()

#### Generating songs


Now that we have reduced the problem to 9 models (best learning curve for each pair datset-cell), we will generate 100 songs with each model, using always the same seed and size (just modify the generate9timesn script with the apropiate layer number)
```
mkdir ~/exampleresearch/experiments/
mkdir ~/exampleresearch/experiments/generated
./rnn-cells-music-paper/paper_scripts/generate9timesn.sh  
```
This will create 9 folders, each with 200 files, the 100 songs as midi and as pickle file with the song as list.
[imagen]()

The next step is tou use the music_geometry_eval library to test the tonality of the models. This script, will apply 3 quantitative metrics (Conjunct Melody Motion, Limited Macroharmony and Centricity) to each set of 100 songs. The output file will have 9 tables with all the songs, different latex tables with summary information, the list of the most representative song of each model (the song whose metrics have the lower euclidean distance to the mean of the 100) and finally, a latex table with the mean and standard deviation for each metric in each model for each 100 song set.
```
python rnn-cells-music-paper/paper_scripts/eval_n_songs.py --generated_dir ~/exampleresearch/experiments/generated > ~/exampleresearch/experiments/metrics_eval_100_songs.txt
```
After that create a folder and move each of the most representative songs there, this script will generate the latex code for table with those metrics
```
python rnn-cells-music-paper/paper_scripts/eval_most_rep_songs.py --songs_folder ~/exampleresearch/experiments/most_repres_songs > ~/exampleresearch/experiments/metrics_eval_most_repres_songs.txt
```

#### Analysing tonality of the models quantitativaly

In order to analyse it, it is necessary to have a base line applying the metrics to the dataset:
```
python rnn-cells-music-paper/paper_scripts/dataset_metric_eval.py --pickles_dir ~/exampleresearch/dataset > ~/exampleresearch/experiments/metrics_eval_dataset.txt
```
Once you compile the latex tables, they will loke like:
[imagen]()
[imagen]()
[imagen]()

Now, you can use the scripts in template_scripts, to transform the midi files in mp3, wav and jpg, however, the images aren't very flexible from console, seem there's no way to export to png from console indicating the dimensions, so I recommend:

- you can use mid_2_wav and mid_2_mp3 to get the audios
- open the midis in musescore, change the dimension in design->page settings
- save as .mscz
- export as png (even so the console doesn't work, export each png manually)

#### Analysing Embeddings Representation of the songs
To visualize the embeddings, we will se the tensorboard embeddings option, in the case of the paper I used the lstm models for the 3 datasets since these are the most common cells

```
tensorboard --logdir control/lstm/lstm3/
tensorboard --logdir interval/lstm/lstm4/
tensorboard --logdir db12/lstm/lstm4/
```

Then in tersorboard, choose a point and you wil see the nearest points with euclidean and cosine distance.

#### Cost function validation
The last experiment to cover the whole paper is the cross-entropy validation as cost function. First we will train a model varying the "save_every" parameter to have different examples of cross-entropy.

```
python 'rnnMusicSeqGenerator/train.py' --save_dir ~/exampleresearch/experiments/cost_function_validation --log_dir ~/exampleresearch/experiments/cost_function_validation --data_dir ~/exampleresearch/dataset/train_final_cleaned.p --num_epochs 50 --batch_size 15 --training_mode='melody' --model 'lstm' --num_layers 2 --save_every 250 --max_models_keep 10
```

Finally, we manually generate a song with the same seed and size for each model, for example
```
mkdir ~/exampleresearch/experiments/cost_function_validation/songs
python 'rnnMusicSeqGenerator/sample.py' --ckpt_dir ~/exampleresearch/experiments/cost_function_validation -n 30 --output_uri ~/exampleresearch/experiments/cost_function_validation/songs/output_controlcase_loss_4.67827-0.mid --seed '60 62 64 62' --sampling_mode='melody' --ckpt_file ~/exampleresearch/experiments/cost_function_validation/model.ckpt_loss_4.67827-0
```



### Other scripts
the scripts in scripts_for_supercomputing are modified versions of the training script for 6 of the experiemnts which I trained in a cluster environment in HPC centre [Apolo](http://www.eafit.edu.co/centros/apolo/Paginas/technical-specification.aspx). It works with slurm as cluster management and job scheduling system, so also the slurm scripts are provided.

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
