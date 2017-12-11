#!/bin/bash

# Merge shapefiles
rm ./data/prodes/prodes.*
ogr2ogr ./data/prodes/prodes.shp templates/prodes-skeleton.shp -t_srs EPSG:4326
for f in ./data/prodes/mosaics-amz-shp/*.shp
do
  echo "Processing $f file..";
  ogr2ogr -update -append ./data/prodes/prodes.shp -nln prodes -select ano,view_date,julday,area,areameters,class_name -t_srs EPSG:4326 $f
done

# start a new db
rm data/prodes.sqlite
spatialite data/prodes.sqlite < scripts/import.sql
