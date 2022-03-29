# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Update shell so nvm command is available
source ~/.bash_profile

# Start with latest
nvm install node
nvm use node

# install global packages
npm install -g prettier