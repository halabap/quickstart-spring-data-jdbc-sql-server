#!/bin/sh

echo "Setting env variables"

export AZ_RESOURCE_GROUP=gma-stream-infra
export AZ_DATABASE_NAME=spring-data-jdbc-test
export AZ_LOCATION=westeu
export AZ_SQL_SERVER_USERNAME=HCI-AZ-ADM-Halabala@embedit.cz
export AZ_SQL_SERVER_PASSWORD=halabala123!
export AZ_LOCAL_IP_ADDRESS=$(curl http://whatismyip.akamai.com/)

#export SPRING_DATASOURCE_URL="jdbc:sqlserver://$AZ_DATABASE_NAME.database.windows.net:1433;database=demo;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
export SPRING_DATASOURCE_URL="jdbc:sqlserver://$AZ_DATABASE_NAME.database.windows.net:1433;databaseName=demo;authentication=DefaultAzureCredential;"
#export SPRING_DATASOURCE_URL="jdbc:sqlserver://$AZ_DATABASE_NAME.database.windows.net:1433;databaseName=demo;authentication=ActiveDirectoryDefault;"
export SPRING_DATASOURCE_USERNAME="$AZ_SQL_SERVER_USERNAME@$AZ_DATABASE_NAME"
#export SPRING_DATASOURCE_PASSWORD=$AZ_SQL_SERVER_PASSWORD
#export SPRING_SQL_INIT_MODE=always
