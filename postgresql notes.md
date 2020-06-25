 To start postgres in the background using default values, type:

           $ nohup postgres >logfile 2>&1 </dev/null &

       To start postgres with a specific port, e.g. 1234:

           $ postgres -p 1234

       To connect to this server using psql, specify this port with the -p option:

           $ psql -p 1234

       or set the environment variable PGPORT:

           $ export PGPORT=1234
           $ psql

           Named run-time parameters can be set in either of these styles:

           $ postgres -c work_mem=1234
           $ postgres --work-mem=1234

       Either form overrides whatever setting might exist for work_mem in postgresql.conf. Notice that underscores in parameter
       names can be written as either underscore or dash on the command line. Except for short-term experiments, it's probably
       better practice to edit the setting in postgresql.conf than to rely on a command-line switch to set a parameter.




    Be sure to un-comment "port 5432" in database.yml file.


    To restart after shutting down: 
        error with postgresql datababse : Is the server running locally and accepting connections on Unix domain socket “/var/run/postgresql/.s.PGSQL.5432”?
    
    Check Postgres Service status from Terminal

        $ sudo service postgresql status
        Enable Postgres Service, If not started

        $ sudo service postgresql start
        OR

        $ sudo service postgresql restart
        Now your command should work, If Postgres Service is successfully started.
