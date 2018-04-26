FROM ruby:2.3.4

RUN apt-get update &&\
	apt-get install -y nodejs &&\
	gem install rails &&\
	mkdir -p /opt/app

ONBUILD WORKDIR /opt/app
ONBUILD ADD . /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundle install && \
	rake db:migrate && \
	rake db:seed

# pour tester, il faut une app rails dans laquelle il y aura un Dockerfile tel
# FROM ft-rails-on-build
# CMD ["rails", "s", "-b", "0.0.0.0"]

# on build d'abord ce Dockerfile (rendu de l'exo), situé à l'extérieur du dossier de l'app
# puis le "mini" Dockerfile dans l'app
# puis on teste
# # docker run -d -p 3000:3000 ft-rails

# docker build . -t ft-rails:on-build

# WARNING : THE COMMAND BELOW ONLY WORKS IF YOU'RE IN THE HOME DIRECTORY !
# docker run -it --rm -v "$PWD":/usr/src/app -w /usr/src/app rails rails new --skip-bundle app

# CREATE A NEW DOCKERFILE INSIDE app :
# FROM ft-rails:on-build
# EXPOSE 3000
# CMD ["rails", "s", "-b", "0.0.0.0", "-p" ,"3000"]

# docker build . -t ft-rails
# docker run -d -t 3000:3000 ft-rails
