Dir.glob('../shape/*.shp') {|path|
  print "ogr2ogr -f 'GeoJSON' -lco 'ENCODING=LDID/19'  #{File.basename(path).sub('shp', 'geojson')} #{path}\n"
}
