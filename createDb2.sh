#!/bin/sh +
whoami
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/create_scc_db_b2bidb.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/create_scc_db_fw.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/DB2-PORTAL.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/DB2-FW.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/Portal-Seed.sql -z create.log'
sudo -i -u db2inst1 bash -c '/opt/ibm/db2/V11.5/bin/db2 -stvf /var/custom/FW-Seed.sql -z create.log'