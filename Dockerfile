FROM ghcr.io/runatlantis/atlantis:latest

RUN curl -sL  https://github.com/gruntwork-io/terragrunt/releases/download/v0.37.2/terragrunt_linux_amd64 \
  > /usr/local/bin/terragrunt \
  && chmod +x /usr/local/bin/terragrunt \
  && source ~/.bashrc
