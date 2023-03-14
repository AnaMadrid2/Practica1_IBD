FROM ontotext/graphdb:10.1.5

COPY *.ttl /root/graphdb-import/

EXPOSE 7200