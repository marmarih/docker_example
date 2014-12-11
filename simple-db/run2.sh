
SERVER_NAME="dbserver" 
SERVER_NAME2="geoserver"

echo "== Trying to download docker image for ${IMAGE_NAME}..."
docker pull ${IMAGE_NAME2}

sleep 10

echo "== Launching postgreSQL image and waiting 2 seconds ..."
docker run --name ${SERVER_NAME2} -d --link ${SERVER_NAME}:ps  -p 8080:8080 ${IMAGE_NAME2}


