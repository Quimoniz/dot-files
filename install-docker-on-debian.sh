#!/bin/bash






sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

OS_FLAVOR="$(lsb_release --id --short | sed "s/^./\L&/")";
if test "debian" != "${OS_FLAVOR}" \
&& test "ubuntu" != "${OS_FLAVOR}";
then
    echo "Error: only 'ubuntu' and 'debian' supported";
    exit 1;
fi;
echo   "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/${OS_FLAVOR} \
	   "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Implicitly grant access to '/var/run/docker.sock'
sudo usermod -aG docker $USER

