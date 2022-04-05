echo "Making sure homebrew is installed..."
if test ! $(which brew); then
  NONINTERACTIVE=1 /bin/bash -c \
    "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/pirhonen/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/pirhonen/.bash_profile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi