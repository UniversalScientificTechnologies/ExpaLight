import os
import csv



with open('results.tsv', 'rb') as tsv:
    file = csv.reader(tsv, delimiter='\t')
    for row in file:
        print row[3], 'openscad CapaLamp.scad --render -o ../../render/dotaznik/%s.stl -D \'text2="%s"\'' %(row[3], row[3])
        os.system('openscad CapaLamp.scad --render -o ../../render/dotaznik/%s.stl -D \'text2="%s"\'' %(row[3], row[3]))
