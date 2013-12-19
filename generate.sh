#!/bin/bash

## Download sources
wget -r -nd -A "*AMZ_shp.zip" -c -P tmp/sources/zips http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos/

# Expand them
unzip ./tmp/sources/zips/\*.zip -d ./tmp/sources/shapefiles

# Remove unnecessary
rm tmp/sources/shapefiles/*Nuvem*
rm tmp/sources/shapefiles/*NUVEM*
rm tmp/sources/shapefiles/*Residuo*

# Merge shapefiles
rm tmp/sources/prodes.*
ogr2ogr tmp/sources/prodes.shp templates/prodes-skeleton.shp -t_srs EPSG:4326
for f in tmp/sources/shapefiles/*.shp
do
  echo "Processing $f file.."; 
  ogr2ogr -update -append tmp/sources/prodes.shp -nln prodes -select ano,view_date,julday,area,areameters,class_name -t_srs EPSG:4326 $f  
done

# start a new db
rm data/prodes.sqlite
spatialite data/prodes.sqlite < scripts/import.sql