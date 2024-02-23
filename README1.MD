docker tag sprint10_final-app:latest jorgejdev/sprint10_final-app:latest

docker push jorgejdev/sprint10_final-app:latest

docker compose build

docker compose push

docker context create ecs sprint10_final


sed -i 's/\r$//' manage.sh