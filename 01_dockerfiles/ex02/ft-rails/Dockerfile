FROM ruby

RUN apt-get update -y && \
    apt-get upgrade -y && \
	apt-get install nodejs -y && \
	gem install rails bundler

ONBUILD WORKDIR /opt

ONBUILD RUN rails new app
ONBUILD WORKDIR /opt/app
ONBUILD RUN bundle install && rake db:migrate && rake db:seed

# docker build -t ft-rails ./ft-rails/.
# docker build -t ex02 .
# docker run -it -p 3000:3000 ex02
