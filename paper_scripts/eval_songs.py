# takes the folder with the 9 generated songs as pickles and make a latex table

import os
import pickle
import music_geometry_eval

import argparse

parser = argparse.ArgumentParser(
                    formatter_class=argparse.ArgumentDefaultsHelpFormatter)
parser.add_argument('--songs_folder', type=str, default='~/experiments/generated/song_sets',
                    help='data directory containing songs')
args = parser.parse_args()

result = {}

m1 = 'm1'
m2 = 'm2'
m3 = 'm3'

filelist=os.listdir(args.songs_folder)
for file in filelist[:]: # filelist[:] makes a copy of filelist.
	if (file.endswith("mid.p")):
		elements = file.split('_')
		database = elements[0]
		cell_type = elements[1]	

		if not database in result:
			result[database]={}
		if not cell_type in result[database]:
			result[database][cell_type] = {}

		song_array = pickle.load(open(args.songs_folder + '/' + file, "rb"))
		# print('{0} {1} Average note: {2}'.format(database, cell_type, music_geometry_eval.eval_song(song_array)))

		result[database][cell_type][m1] = music_geometry_eval.calculate_conjunct_melodic_motion(song_array)
		result[database][cell_type][m2] = music_geometry_eval.calculate_limited_macroharmony(song_array)
		result[database][cell_type][m3] = music_geometry_eval.calculate_centricity(song_array)

# import pdb
# pdb.set_trace()
print result

print '\nlatex table:'
partial_result = result['control']
print('control  & {0:.2f} {1:.2f} {2:.2f} & {3:.2f} {4:.2f} {5:.2f} & {6:.2f} {7:.2f} {8:.2f} \\\\').format(partial_result['lstm'][m1], partial_result['lstm'][m2], partial_result['lstm'][m3], partial_result['nas'][m1], partial_result['nas'][m2], partial_result['nas'][m3], partial_result['ugrnn'][m1], partial_result['ugrnn'][m2], partial_result['ugrnn'][m3])
partial_result = result['interval']
print('interval  & {0:.2f} {1:.2f} {2:.2f} & {3:.2f} {4:.2f} {5:.2f} & {6:.2f} {7:.2f} {8:.2f} \\\\').format(partial_result['lstm'][m1], partial_result['lstm'][m2], partial_result['lstm'][m3], partial_result['nas'][m1], partial_result['nas'][m2], partial_result['nas'][m3], partial_result['ugrnn'][m1], partial_result['ugrnn'][m2], partial_result['ugrnn'][m3])
partial_result = result['db12']
print('db12  & {0:.2f} {1:.2f} {2:.2f} & {3:.2f} {4:.2f} {5:.2f} & {6:.2f} {7:.2f} {8:.2f} \\\\').format(partial_result['lstm'][m1], partial_result['lstm'][m2], partial_result['lstm'][m3], partial_result['nas'][m1], partial_result['nas'][m2], partial_result['nas'][m3], partial_result['ugrnn'][m1], partial_result['ugrnn'][m2], partial_result['ugrnn'][m3])