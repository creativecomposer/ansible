FROM ubuntu:focal
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt-add-repository -y ppa:neovim-ppa/unstable && apt update && apt install -y curl git neovim ansible

# RUN sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
# RUN locale-gen
# RUN echo "export LC_ALL=en_US.UTF-8" >> ~/.bashrc

COPY . .
CMD ["sh", "-c", "ls -latr"]
