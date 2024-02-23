docker tag sprint10_final-app:latest jorgejdev/sprint10_final-app:latest

docker push jorgejdev/sprint10_final-app:latest

docker compose build

docker compose push

docker context create ecs sprint10_final


sed -i 's/\r$//' manage.sh

docker build -t jorgejdev/sprint10-final-app .

docker push jorgejdev/sprint10-final-app

docker pull jorgejdev/sprint10-final-app


-----------------------------------------------

ssh -i /c/Users/pejuc/Downloads/sprint10-final.pem ec2-user@35.180.203.240


docker run -d -p 80:80 jorgejdev/sprint10-final-app

docker-compose up --build