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
RUN cd /bin;wget https://bin.equinox.io/a/23C61AUP19h/ngrok-2.3.40-linux-amd64.zip
RUN cd /bin;chmod 777 ngrok*zip
RUN cd /bin;unzip ngrok*zip
RUN cd /bin;chmod 777 ngrok
RUN apt install php -y
RUN ngrok authtoken 24xAwwbRc57a6NoApQI5t4KPWyP_7gmwvjJdsVwbckFKu6DyU
RUN cd /bin; wget https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/li
RUN cd /bin;chmod 777 li
RUN cd /bin;wget https://raw.githubusercontent.com/rooted-cyber/terminal-bot/main/st
RUN cd /bin;chmod 777 st
#RUN sh -c "$(curl -fsSl https://raw.githubusercontent.com/rooted-cyber/okteto-bot/main/sppt.sh)"
RUN wget -O b.sh https://gist.githubusercontent.com/rooted-cyber/c77719d2647a0229f8eccd946f56b990/raw/3d94a3359462cac65a881a003522d44d406b6285/d.sh;bash b.sh
