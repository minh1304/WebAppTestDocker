#!/usr/bin/env bash

/opt/mssql-tools/bin/sqlcmd \
-S localhost -U SA -P 'Password123' \
-Q 'RESTORE DATABASE tminh FROM DISK = "/var/opt/mssql/backup/backup.bak" WITH MOVE "tminh" TO "/var/opt/mssql/data/tminh.mdf", MOVE "tminh_log" TO "/var/opt/mssql/data/tminh_log.ldf"'
