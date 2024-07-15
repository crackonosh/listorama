PHP_CONTAINTER_ID=$(docker ps --filter "name=listorama_php" --format "{{.ID}}")

docker exec -it $PHP_CONTAINTER_ID /usr/local/bin/composer $@