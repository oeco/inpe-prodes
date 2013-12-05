# INPE Prodes data

INPE Prodes provides vectorial data about Amazon deforestation here:

http://www.obt.inpe.br/prodes/index.php

This repository offers a Spatialite package of all deforestation vetorial data from PRODES since 2005.

You can download latest the file here:



## How to generate this package

Requirements

* wget
* python
* ogr2ogr
* spatialite

First, download all files from (http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos/) by running:

    ./download.sh

Then:

    ./generate.sh

This will generate the `prodes.sqlite` file, located at `data` folder.