### Ejemplo 1 de consulta SPARQL
```
PREFIX esadm: <http://vocab.linkeddata.es/datosabiertos/def/sector-publico/territorio#>
select ?a where { 
	?a a esadm:Municipio .
} limit 100 
```
