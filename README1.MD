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

ssh -i /c/Users/pejuc/Desktop/Programacion/Qualentum/Sprint10/Sprint10-final/sprint10-final.pem ec2-user@15.188.143.47

docker run -d -p 5000:5000 jorgejdev/sprint10-final-app

docker-compose up --build


RUN sed -i 's/\r$//' manage.sh



# Instalar Docker Compose (ajusta la versión de Docker Compose según necesites)
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Navegar al directorio donde está tu docker-compose.yml
cd /path/to/your/project

# Levantar tus servicios definidos en docker-compose.yml
docker-compose up -d
