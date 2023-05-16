# Install make and wget
sudo apt-get update && apt-get install -y make wget curl

# Install Hugo v0.84.0
wget https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_extended_0.84.0_Linux-64bit.tar.gz
sudo tar -zxvf hugo_extended_0.84.0_Linux-64bit.tar.gz
mv hugo /usr/local/bin

# Install golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin 
echo 'export PATH="$(go env GOPATH)/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

sudo npm install --global \
  markdownlint-cli@0.26.0 \
  markdown-link-check@3.8.6
  