sudo apt update;
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable";
sudo apt install docker-ce -y;

sudo usermod -aG docker ${USER};
sudo reboot 0

sudo mkdir docker-cilsy;
cd docker-cilsy;
sudo git clone https://github.com/sdcilsy/landing-page.git;
docker container run -d --name docker-1 -p 8003:80 nginx;
