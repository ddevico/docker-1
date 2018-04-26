docker build -t ts .
docker run -dit -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ts

#https://github.com/keuhdall/docker-1/blob/master/01_dockerfiles/ex01/run.sh
