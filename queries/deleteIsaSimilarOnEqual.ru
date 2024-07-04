# Delete is-a or similar links that are newly added as equal 

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>
PREFIX metavd_id: <http://togodb.org/metavd/>

DELETE {
  ?s skos:narrower ?o .
  ?s skos:broader ?o .
  ?s skos:related ?o .
} WHERE {
  ?s skos:exactMatch ?o ;
     (skos:narrower | skos:broader | skos:related) ?o .
}