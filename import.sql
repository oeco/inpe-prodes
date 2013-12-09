-- load source shapefile
.loadshp data/prodes prodes ISO-8859-1 4326;

-- create indexes
SELECT CreateSpatialIndex('prodes', 'geometry');
CREATE INDEX area_prodes_index ON prodes (area);
CREATE INDEX ano_prodes_index ON prodes (ano);

-- remove residue records
delete from prodes where class_name like 'res%';
delete from prodes where class_name like 'RES%';

-- update ano field
update prodes set ano = cast(substr(view_date,1,4) as integer) where ano is 0;

-- round area
update prodes set area = round(area) where area > 0;

-- update area field
update prodes set area = round(cast(areameters as real)) where area = 0;