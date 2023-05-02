FROM ibmcom/db2

RUN mkdir /var/custom
COPY create_scc_db_b2bidb.sql /var/custom
COPY create_scc_db_fw.sql /var/custom
COPY createDb2.sh /var/custom
COPY DB2-FW.sql /var/custom
COPY DB2-PORTAL.sql /var/custom
COPY FW-Seed.sql /var/custom
COPY Portal-Seed.sql /var/custom/
RUN chmod a+x /var/custom/createDb2.sh