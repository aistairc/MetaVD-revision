# Delete any similar links over-linked by is-a ones

PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX skos: <http://www.w3.org/2004/02/skos/core#>

DELETE {?s ?focus_rel ?o}
WHERE {
VALUES ?focus_rel { skos:related }
  ?s ( skos:narrower | skos:broader ) ?o ;
      ?focus_rel ?o .
}