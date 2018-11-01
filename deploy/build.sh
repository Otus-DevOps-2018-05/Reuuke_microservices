echo 'Build Docker Container'
apt update
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt install docker-ce
systemctl enable docker
cd ../docker-monolith/
echo ${GITHUB_PASSWORD} | docker login --username ${GITHUB_LOGIN} --password-stdin
docker build -t reuuke/reddit-ci2:latest .
docker push reuuke/reddit-ci2:latest
