FROM anasty17/mltb:latest

WORKDIR /maruf

ENV TZ=Asia/Kolkata

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update -y;apt-get install -y figlet toilet neofetch apt-utils sudo wget
RUN figlet hi; neofetch
RUN cd /usr/share/figlet;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/font.flf
RUN figlet -f font Install
RUN cd /root/.config/neofetch;rm config.conf;wget https://raw.githubusercontent.com/rooted-cyber/uploading/main/c1/config.conf
RUN neofetch;pip install --upgrade pip;pip3 install youtube-dl;neofetch
RUN wget -O do.sh https://get.docker.com/;bash do.sh
RUN sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/okteto-bot/main/sppt.sh)"
