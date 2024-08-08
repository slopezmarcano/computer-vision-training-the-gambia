import os
from wand.image import Image

#Define the input and output file paths
input_file = 'outputs/.pdf'
output_dir = ''

#Create the output directory (if it doesn't exist)
if not os.path.exists(output_dir):
    os.makedirs(output_dir)

#Open the PDF file
with Image(filename=input_file) as pdf:

    #Convert each page of the PDF to a PNG image
    for i, page in enumerate(pdf.sequence):
        with Image(page) as img:
            img.format = 'png'
            #Output filename
            output_file = os.path.join(output_dir, f'{os.path.splitext(input_file)[0]}_page_{i+1}.png')
            img.save(filename=output_file)
