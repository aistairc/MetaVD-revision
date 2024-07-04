# Delete any similar links that have contradict to newly added is-a links via equal links

PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>

DELETE {
  ?ex skos:related ?obj .
  ?obj skos:related ?ex .
} WHERE {
  ?sbj (skos:broader | skos:narrower) ?obj ;
       skos:exactMatch ?ex .
  ?ex skos:related ?obj .
}