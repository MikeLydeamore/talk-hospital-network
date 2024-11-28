#!/bin/bash

# Set the input directory and output directory
INPUT_DIR=images/
OUTPUT_DIR=images/

# Loop through all files in the input directory
for FILE in "$INPUT_DIR"/*.pdf; do
  # Extract images from the PDF using convert
    convert "$FILE" -density 300 -trim -gravity center -removebackground +colorwhite output%03d.png
done