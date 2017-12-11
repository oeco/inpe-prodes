-- load source shapefile
.loadshp ./data/prodes/prodes prodes ISO-8859-1 4326;

-- create indexes
SELECT CreateSpatialIndex('prodes', 'geometry');
CREATE INDEX area_prodes_index ON prodes (area);
CREATE INDEX ano_prodes_index ON prodes (ano);
CREATE INDEX areameters_prodes_index ON prodes (areameters);
CREATE INDEX class_name_prodes_index ON prodes (class_name);
CREATE INDEX view_date_prodes_index ON prodes (view_date);
CREATE INDEX julday_name_prodes_index ON prodes (julday);

-- remove residues records
delete from prodes where class_name like 'res%';
delete from prodes where class_name like 'RES%';

-- update ano field
update prodes set ano = cast(substr(view_date,1,4) as integer) where ano is 0;

-- update area from areameters field
update prodes set area = cast(areameters as real) where area = 0;

-- round area to hectares
update prodes set area = round(area / 10000, 2) where area > 0;

-- purge very small areas
delete from prodes where area = 0;

-- where missing view_date, calculate it from julday
update prodes set view_date = strftime('%Y-%m-%d', julianday(ano || '-01-01') + julday - 1) where length(view_date)<=2 and julday>0;
update prodes set view_date = ano || '-01-01' where length(view_date)<=2 and julday=0;

-- update year, month and day fields
update prodes set year = strftime('%Y', view_date), month = strftime('%m', view_date), day = strftime('%d', view_date);

-- update area_pt field using commas as decimal separator
update prodes set area_pt = replace(area,'.',',');

vacuum;
