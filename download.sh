#!/bin/bash

## Download sources

wget -r -nd -A "*AMZ_shp.zip" -P data/zip http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos/

# Expand them
unzip ./data/zip/\*.zip -d ./data/expanded

# Remove unnecessary
rm data/expanded/*Nuvem*
rm data/expanded/*NUVEM*
rm data/expanded/*Residuo*