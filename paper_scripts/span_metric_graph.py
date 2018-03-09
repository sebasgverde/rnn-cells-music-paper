# takes the folder with the 9 generated songs as pickles and make a latex table

import os
import pickle
import music_geometry_eval
import matplotlib.pyplot as plt

result = {}

m1 = 'm1'
m2 = 'm2'
m3 = 'm3'
songs_folder = '~/experiments/generated'
filelist=os.listdir(songs_folder)
lm_array = []
centr_array = []

# import pdb
# pdb.set_trace()
# file = filelist[-2]
file ='interval_nas_2_notes_30.mid.p'
if (file.endswith("mid.p")):
	song_array = pickle.load(open(songs_folder + '/' + file, "rb"))

	for i in range(5,30):

		lm_array.append(music_geometry_eval.calculate_limited_macroharmony(song_array, i))

	for i in range(5,30):

		centr_array.append(music_geometry_eval.calculate_centricity(song_array, i))

	print 'lm'
	print lm_array
	print 'centr'
	print centr_array

	file_no_ext = file[:-6]

	x = range(5,30)
	plt.plot(x, lm_array, linewidth=2.0)
	plt.title(r'limited macroharmony')
	# plt.show()
	plt.savefig(file_no_ext + '_lm.png')

	plt.gcf().clear()
	plt.plot(x, centr_array, linewidth=2.0)
	plt.title(r'centricity')
	# plt.show()
	plt.savefig(file_no_ext + '_centr.png')



# for file in filelist[:]: # filelist[:] makes a copy of filelist.
# 	if (file.endswith("mid.p")):
# 		elements = file.split('_')
# 		database = elements[0]
# 		cell_type = elements[1]	

# 		if not database in result:
# 			result[database]={}
# 		if not cell_type in result[database]:
# 			result[database][cell_type] = {}

# 		song_array = pickle.load(open(songs_folder + '/' + file, "rb"))
# 		# print('{0} {1} Average note: {2}'.format(database, cell_type, music_geometry_eval.eval_song(song_array)))

# 		result[database][cell_type][m1] = music_geometry_eval.calculate_conjunct_melodic_motion(song_array)
# 		result[database][cell_type][m2] = music_geometry_eval.calculate_limited_macroharmony(song_array)
# 		result[database][cell_type][m3] = music_geometry_eval.calculate_centricity(song_array)