= Using JSON in Goson

This is a simple project that uses the JSON results returned from 
http://open.mapquestapi.com/nominatim/v1/search.php to create a 
strongly typed API for Gosu to work with via the Goson library
and typeloader.

The 'src' directory contains only one file, /openmap/Map.json, the JSON downloaded
from an example query.  This JSON file will be used to infer types
for working with the content.

The 'lib' directory contains the goson jar.

The 'bin' directory contains a simple gosu program that sets up a
classpath, including the goson jar (which enables the JSON typeloader
and types) and then invokes the static 'get()' method on the 'openmap.Map'
JSON type that goson created, which issues an HTTP request to the URL given
and parses the results, with everything coming back strongly typed.

You can edit the file using the OOTB gosu editor like so:

  gosu -g bin/main.gsp
  
And play around with the results to see that, in fact, there is a nice
static type system available to you.
