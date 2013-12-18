# INPE Prodes TileMill project

This is the TileMill project for data provided by [INPE Prodes](http://www.obt.inpe.br/prodes/index.php).

## Map install

Download and expand this zip file, `cd` into its directory and and run:

	./install-map.sh

This will download map data and symlink to TileMill.  

If there is a broken link or any other problem, please open an [issue](https://github.com/oeco/inpe-prodes/issues).

## Regenerating map data

Requirements

* wget
* python
* ogr2ogr
* spatialite

First, download all files by running:

    ./download.sh

Then:

    ./generate.sh

Be patient, this is take a while. 

When it finishes, a Spatialite file will be available at `data` folder.

## Other information

Source files are available here:

http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos

If you only need the data, it can be dowloaded here:

https://dl.dropboxusercontent.com/u/3291375/ecolab/prodes.sqlite.zip

QGIS supports Spatilite files.
