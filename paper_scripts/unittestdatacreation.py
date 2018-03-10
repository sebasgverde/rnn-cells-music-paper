# from midi_manager import MidiLoader
import pickle
import os
import unittest

# python unittestdatacreation.py -v

base_name = 'train'
files_count = '9552'

output_dir = '~/datasets/pickles/'
output_dir += base_name + '/'

tensor = pickle.load(open(output_dir + base_name + '_song_list.p', "rb"))
clean_tensor = pickle.load(open(output_dir + base_name + '_song_list_cleaned.p', "rb"))
        
count_false_songs=0
for seq in tensor:
    if len(seq) <= 2:      
        count_false_songs+=1

class MyTest(unittest.TestCase):
    def test(self):
        self.assertEqual(len(tensor), int(files_count), msg='length of array, should be the number of midis in folder')

    def test_clean_tensor(self):
        self.assertEqual(len(tensor) - count_false_songs, len(clean_tensor))

    def test_clean_tensor_false(self):
        self.assertEqual(len(tensor) - count_false_songs, len(clean_tensor)+1)
if __name__ == '__main__':
    unittest.main()