# INPE Prodes Carto

This is the TileMill project for data provided by [INPE Prodes](http://www.obt.inpe.br/prodes/index.php). This information is used in [InfoAmazonia](http://InfoAmazonia.org) to show deforestation in the Amazon Rainforest after 2005.

## Layers

### [3D Global Vegetation Map](https://landscape.jpl.nasa.gov)

- Website: landscape.jpl.nasa.gov
- Source: [JPL-NASA](https://www.jpl.nasa.gov)
- License: [Public domain](https://www.jpl.nasa.gov/imagepolicy/)
- Download:
  - [1km resolution, TIF, 67MB](https://landscape.jpl.nasa.gov/resources/Simard_Pinto_3DGlobalVeg_JGR.tif.gz)
  - [10km resolution, KMZ, 1MB](https://landscape.jpl.nasa.gov/resources/Simard_GlobalCanopyHeight10km.kmz)

### [PRODES](www.obt.inpe.br/prodes)

- Description: Deforestation data from INPE Prodes
- Website: www.obt.inpe.br/prodes
- [Project  presentation in PDF](http://www.obt.inpe.br/OBT/assuntos/programas/amazonia/prodes/pdfs/apresentacao_prodes-1.pdf)
-
- Source: [INPE]

## Map install

[Copy](https://github.com/oeco/inpe-prodes/archive/master.zip) or clone this repository locally and run:

	./install.sh

This will download map data and symlink to TileMill.  

If there is a broken link or any other problem, please open an [issue](https://github.com/oeco/inpe-prodes/issues).

## Preparing map data

### Scripts

`scripts/download.sh`: Download zipped shapefiles of deforestation polygons for the Amazon region from [Prodes mosaic folder](http://www.dpi.inpe.br/prodesdigital/dadosn/mosaicos/). The files will be saved at  `data/prodes/mosaics-amz-shp`.



Requirements

* wget
* Python
* [GDAL](http://www.gdal.org)
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
