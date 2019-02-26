 @echo off
   pause 
   set BACKUP_FILE=F:\\Backup\backup_[%date:~0,2%-%date:~3,2%-%date:~6,10%-%time:~0,2%-%time:~3,2%].backup
   echo backup file name is %BACKUP_FILE%
   SET PGPASSWORD=postgres
   echo on
  pg_dump -h localhost -p 5432 -U postgres -F c -b -v -f %BACKUP_FILE% postgres