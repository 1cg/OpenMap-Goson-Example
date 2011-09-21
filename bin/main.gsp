classpath "../lib/goson.jar,../src/"
uses openmap.Map

var result = Map.get( "http://open.mapquestapi.com/nominatim/v1/search.php", { "q" -> "sacramento", "format" -> "json" } )

for( r in result ) {
  print( "Found ${r.DisplayName} at lat ${r.Lat} and lon ${r.Lon}" )
}