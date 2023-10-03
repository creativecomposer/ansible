This repo is influenced by [ThePrimeagen's project](https://github.com/ThePrimeagen/ansible/tree/master)

## Usage

Typically, run the following commands in the same order as shown below.

`install_homebrew.sh`

`ansible-playbook pre-dot.yml`

In Mac, specify the `brewpath` variable: `ansible-playbook pre-dot.yml --extra-vars "brewpath=/opt/homebrew/bin/brew"

`ansible-playbook dot.yml`

`ansible-playbook post-dot.yml`

## Installing zsh

In Mac, zsh is the default shell. Therefore, in Mac, remove the zsh install tasks from `zsh.yml` and then run

`ansible-playbook zsh.yml`
