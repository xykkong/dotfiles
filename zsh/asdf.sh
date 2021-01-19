#!/bin/bash

# nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs latest
asdf global nodejs $(asdf list nodejs)

# java
dpkg-query -W -f='${binary:Package}\n' | grep -E -e '^(ia32-)?(sun|oracle)-java' -e '^openjdk-' -e '^icedtea' -e '^(default|gcj)-j(re|dk)' -e '^gcj-(.*)-j(re|dk)' -e '^java-common' | xargs sudo apt-get -y remove
sudo bash -c 'ls -d /home/*/.java' | xargs sudo rm -rf
sudo rm -rf /usr/lib/jvm/*
for g in ControlPanel java java_vm javaws jcontrol jexec keytool mozilla-javaplugin.so orbd pack200 policytool rmid rmiregistry servertool tnameserv unpack200 appletviewer apt extcheck HtmlConverter idlj jar jarsigner javac javadoc javah javap jconsole jdb jhat jinfo jmap jps jrunscript jsadebugd jstack jstat jstatd native2ascii rmic schemagen serialver wsgen wsimport xjc xulrunner-1.9-javaplugin.so; do sudo update-alternatives --remove-all $g; done

asdf plugin-add java https://github.com/halcyon/asdf-java.git

# maven
asdf plugin-add maven
asdf install maven latest
asdf global maven $(asdf list maven)

#python
asdf plugin-add python
sudo apt-get update; sudo apt-get install --no-install-recommends make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev


#golang
sudo apt remove golang-go
sudo apt remove golang
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf install golang latest
asdf global golang $(asdf list golang)

# ruby
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git


# google cloud
asdf plugin add gcloud https://github.com/jthegedus/asdf-gcloud.git
asdf install gcloud latest
asdf global gcloud $(asdf list gcloud)

#terraform
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add terraform-lsp https://github.com/bartlomiejdanek/asdf-terraform-lsp.git
asdf plugin-add terraform-validator https://github.com/looztra/asdf-terraform-validator
asdf plugin-add terraform-docs https://github.com/looztra/asdf-terraform-docs


# kubernetes
asdf plugin-add kubectl https://github.com/Banno/asdf-kubectl.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add helm-docs https://github.com/sudermanjr/asdf-helm-docs.git
asdf plugin-add kind https://github.com/reegnz/asdf-kind.git


# neovim
sudo apt remove neovim
sudo apt remove vim
asdf plugin-add neovim
asdf install neovim stable
asdf global neovim $(asdf list neovim)
sudo apt install python3-pip
npm install -g neovim
pip3 install neovim


# rust
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust stable 
asdf global rust stable 

# FZF
asdf plugin add fzf https://github.com/kompiro/asdf-fzf.git

