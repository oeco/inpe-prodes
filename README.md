# INPE Prodes data

[INPE Prodes](http://www.obt.inpe.br/prodes/index.php) provides [vector data](http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos) about Amazon deforestation.

This repository offers a Spatialite package of all deforestation vetorial data from PRODES since 2005, which is used at [InfoAmazonia](http://InfoAmazonia.org).

You can find latest the file (aprox. 180Mb), with data from January 2005 to September 2013, here:

https://dl.dropboxusercontent.com/u/3291375/ecolab/prodes.sqlite.zip


If there is a broken link or any other problem, please open an [issue](https://github.com/oeco/inpe-prodes/issues).

## How to generate this package

Requirements

* wget
* python
* ogr2ogr
* spatialite


First, download all files by running:

    ./download.sh

Then:

    ./generate.sh

This will generate the `prodes.sqlite` file, located at `data` folder.
