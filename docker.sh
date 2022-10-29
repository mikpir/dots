sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager \
        --add-repo \
            https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Add current user to docker group
USER=`whoami`
echo $USER
sudo usermod -aG docker $USER

