@echo off
FOR /f "tokens=*" %%i IN ('docker ps --filter "name=listorama_php" --format "{{.ID}}"') DO SET PHP_CONTAINER_ID=%%i

docker exec -it %PHP_CONTAINER_ID% /usr/local/bin/composer %*