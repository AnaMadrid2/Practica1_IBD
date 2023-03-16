### Ejemplo 1 de consulta SPARQL
```
PREFIX esadm: <http://vocab.linkeddata.es/datosabiertos/def/sector-publico/territorio#>
select ?a where { 
	?a a esadm:Municipio .
} limit 100 
```

### Ejemplo 2 de consulta SPARQL
```
PREFIX geosparql: <http://www.opengis.net/ont/geosparql#>
select * where { 
	?s geosparql:asWKT ?o .
} limit 1000
```


