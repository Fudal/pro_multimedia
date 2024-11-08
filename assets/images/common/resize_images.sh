#!/bin/bash

# Folder z bazowymi obrazkami
source_folder="common"
# Foldery docelowe
output_2x="common/2.0x"
output_3x="common/3.0x"

# Tworzenie folderów docelowych, jeśli nie istnieją
mkdir -p $output_2x
mkdir -p $output_3x

# Przetwarzanie każdego obrazka w folderze
for file in $source_folder/*; do
    filename=$(basename "$file")
    
    # 2.0x
    sips -Z 1280 "$file" --out "$output_2x/$filename"
    
    # 3.0x
    sips -Z 1920 "$file" --out "$output_3x/$filename"
done
