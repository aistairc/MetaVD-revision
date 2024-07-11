# MetaVD-revision

This repository contains data and SPARQL queries to revise an RDFized [MetaVD](https://github.com/STAIR-Lab-CIT/metavd) dataset.
The `data` directory contains an RDF dataset and resultant JSON file.
MetaVD0.ttl.gz is the first version that has contradictory links, and MetaVD9.ttl.gz is the contradiction-free version.
A series of SPARQL queries was issued to the MetaVD0.ttl.gz first followed by generating another version, and then MetaVD9 is the final.
The `queries` directory contains queries to check or edit an RDF dataset.

We loaded the RDF dataset to [Apache Jena Fuseki](https://jena.apache.org/documentation/fuseki2/) Ver. 4.7.0.

