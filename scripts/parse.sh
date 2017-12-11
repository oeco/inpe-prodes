#!/bin/bash

# Remove unnecessary
rm data/originals/shapefiles/*Nuvem*
rm data/originals/shapefiles/*NUVEM*
rm data/originals/shapefiles/*Residuo*

# Merge shapefiles
rm tmp/sources/prodes.*
ogr2ogr tmp/sources/prodes.shp templates/prodes-skeleton.shp -t_srs EPSG:4326
for f in data/originals/shapefiles/*.shp
do
  echo "Processing $f file..";
  ogr2ogr -update -append tmp/sources/prodes.shp -nln prodes -select ano,view_date,julday,area,areameters,class_name -t_srs EPSG:4326 $f  
done

# start a new db
rm data/prodes.sqlite
spatialite data/prodes.sqlite < scripts/import.sql
