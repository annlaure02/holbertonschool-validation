# Install make and wget
sudo apt-get update && apt-get install -y make wget curl

# Install Hugo v0.84.0
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin

# Install golangci-lint
curl --silent --show-error --location --output /tmp/golangci-lint.deb \
     "https://github.com/golangci/golangci-lint/releases/download/v1.52.2/golangci-lint-1.52.2-linux-amd64.deb"
sudo dpkg -i /tmp/golangci-lint.deb
rm -f /tmp/golangci-lint.deb

sudo npm install --global \
  markdownlint-cli@0.26.0 \
  markdown-link-check@3.8.6
  