#!/bin/bash

## Download sources
wget -r -nd -A "*AMZ_shp.zip" -c -P data/prodes/mosaics-amz-shp-zip http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos/

# Expand them
unzip -n ./data/prodes/mosaics-amz-shp-zip/\*.zip -d ./data/prodes/mosaics-amz-shp

# Remove clouds and residues layers
rm ./data/prodes/mosaics-amz-shp/*Nuvem*
rm ./data/prodes/mosaics-amz-shp/*NUVEM*
rm ./data/prodes/mosaics-amz-shp/*Residuo*
rm ./data/prodes/mosaics-amz-shp/*residuo*
