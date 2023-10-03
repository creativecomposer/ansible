#!/usr/bin/env -S bash -e

# TODO: sudo is not needed for installing in Mac
if [[ "$EUID" -ne 0 ]]; then
  echo "Please run the script as sudo or root."
  exit 1
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# On Linux, we need to add brew to PATH
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# First, install ansible. Then we will use ansible to install the other necessary stuff
# Note: In Linux, ansible installed using brew throws unsupported locale setting error.
# Therefore, in Linux, install ansible using apt.
# Only on MacOS, use brew to install ansible.
# brew install ansible

echo "Next step: Install ansible using apt (Linux) or brew (Mac)"
