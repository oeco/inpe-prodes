#!/bin/bash

# Merge shapefiles
rm data/prodes.*
ogr2ogr data/prodes.shp data/prodes-skeleton.shp -t_srs EPSG:4326
for f in data/expanded/*.shp
do
  echo "Processing $f file.."; 
  ogr2ogr -update -append data/prodes.shp -nln prodes -select ano,view_date,area,areameters,class_name -t_srs EPSG:4326 $f  
done

# start a new db
rm data/prodes.sqlite
spatialite data/prodes.sqlite < lib/sql/import.sql