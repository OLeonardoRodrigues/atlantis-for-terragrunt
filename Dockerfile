FROM ghcr.io/runatlantis/atlantis:latest

RUN curl -sL  https://api.github.com/repos/gruntwork-io/terragrunt/releases \
  | jq -r '.[0].assets[].browser_download_url' \
  | egrep 'linux.*amd64' \
  | tail -1 > /usr/local/bin/terragrunt \
  | chmod +x /usr/local/bin/terragrunt
