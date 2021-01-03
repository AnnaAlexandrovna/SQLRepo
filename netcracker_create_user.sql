# выполняется по system:

drop user NETCRACKER cascade;
create user NETCRACKER identified by NETCRACKER;
grant connect, resource to NETCRACKER;
alter user NETCRACKER quota 100M on USERS;
alter user NETCRACKER quota 100M on SYSTEM;  -- на всякий случай, вдруг это табличное пространство по умолчанию
grant execute on sys.dbms_stats to NETCRACKER;
grant select_catalog_role to NETCRACKER;


# далее зайти под пользователем netcracker и выполнить файл netcracker.sql
