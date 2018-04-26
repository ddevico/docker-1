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

# docker build -t ft-rails ./ft-rails/.
# docker build -t ex02 .
# docker run -it -p 3000:3000 ex02
