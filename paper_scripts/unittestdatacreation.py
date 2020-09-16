# from midi_manager import MidiLoader
import pickle
import os
import unittest
# import argparse

# python unittestdatacreation.py -v

# parser = argparse.ArgumentParser(
#                     formatter_class=argparse.ArgumentDefaultsHelpFormatter)
# parser.add_argument('--output_dir', type=str, default='~/dataset',
#                     help='data directory containing dataset pickles')
# args = parser.parse_args()

base_name = 'train'
files_count = '9552'

# output_dir = args.output_dir + '/' + base_name + '/'
output_dir = os.path.expanduser('~') + '/exampleresearch/dataset/'


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

    # # this was done specifically to check it fails
    # def test_clean_tensor_false(self):
    #     self.assertEqual(len(tensor) - count_false_songs, len(clean_tensor)+1)
if __name__ == '__main__':
    unittest.main()