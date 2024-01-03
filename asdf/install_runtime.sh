#!/bin/bash

# erlang and exilir
brew install autoconf
brew install openssl@1.1
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf list-all erlang
asdf install erlang <version>
asdf global erlang <version>
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf list-all exilir
asdf install exilir <version>
asdf global exilir <version>

# golang
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
asdf list-all golang
asdf install golang latest
asdf global golang $(asdf list golang)

# java
asdf plugin-add java https://github.com/halcyon/asdf-java.git

# kubernetes
asdf plugin-add kubectl https://github.com/Banno/asdf-kubectl.git
asdf plugin-add helm https://github.com/Antiarchitect/asdf-helm.git
asdf plugin-add helm-docs https://github.com/sudermanjr/asdf-helm-docs.git
asdf plugin-add kind https://github.com/reegnz/asdf-kind.git

# maven
asdf plugin-add maven
asdf list-all maven
asdf install maven latest
asdf global maven $(asdf list maven)

# nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf list-all nodejs | grep ^20.
asdf install nodejs latest
asdf global nodejs $(asdf list nodejs)

# python
asdf plugin-add python
asdf list-all python | grep ^3.
asdf install python <version>
asdf global python <version>

# ruby
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# rust
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf list-all rust
asdf install rust stable 
asdf global rust stable 

#terraform
asdf plugin-add terraform https://github.com/Banno/asdf-hashicorp.git
asdf plugin-add terraform-lsp https://github.com/bartlomiejdanek/asdf-terraform-lsp.git
asdf plugin-add terraform-validator https://github.com/looztra/asdf-terraform-validator
asdf plugin-add terraform-docs https://github.com/looztra/asdf-terraform-docs
