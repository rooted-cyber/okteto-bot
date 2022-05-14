a() {
clear
printf "\n\n\033[1;92m Updating package....\n"
sleep 0.50
apt update -y
apt upgrade -y
printf "\n\n\033[1;93m Installing wget\n"
apt install wget -y
printf "\n\n\033[1;94m Installing git\n"
apt install git -y
apt install aria2 -y
printf "\n\n \033[1;94m Cloning Ultroid\n"
git clone https://github.com/TeamUltroid/Ultroid
cd Ultroid
printf "\n\n\033[1;93m Installing ultroid Requirements\n"
pip3 install -r requ*
printf "\n\n\033[1;93m Installing Optional requirements \n"
pip3 install -r res*/st*/opt*
printf "\n\n\033[1;93m Installing speedtest\n"
pip3 install speedtest-cli
printf "\n\n\033[1;93m Installing Ultroid .env\n"
wget -O .env https://raw.githubusercontent.com/rooted-cyber/okteto-bot/main/s
clear
printf "\n \033[1;92m Successfully installed ultroid \n\n"
sleep 0.50
bash startup
}
a