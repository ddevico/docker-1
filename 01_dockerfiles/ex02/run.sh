docker build -t ft-rails ./ft-rails/.
docker build -t ex02 .
docker run -it -d -p 3000:3000 ex02
