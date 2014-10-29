# INPE Prodes TileMill project

This is the TileMill project for data provided by [INPE Prodes](http://www.obt.inpe.br/prodes/index.php). This information is used in [InfoAmazonia](http://InfoAmazonia.org) to show deforestation in the Amazon Rainforest after 2005.

## Map install

[Copy](https://github.com/oeco/inpe-prodes/archive/master.zip) or clone this repository locally and run:

	./install.sh

This will download map data and symlink to TileMill.  

If there is a broken link or any other problem, please open an [issue](https://github.com/oeco/inpe-prodes/issues).

## Regenerating map data

Requirements

* wget
* Python
* [GDAL](www.gdal.org)
* Spatialite

At your repository, run:

    ./generate.sh

Be patient, this is take a while. 

When it finishes, a Spatialite file will be available at `data` folder.

## Other information

Source files are available here:

http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos

If you only need the data, it can be dowloaded here:

https://dl.dropboxusercontent.com/u/3291375/ecolab/prodes.sqlite.zip

[QGIS](www.qgis.org) supports trannsforation of Spatilite files to Shapefiles.
