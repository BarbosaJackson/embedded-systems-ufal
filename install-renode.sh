mkdir renode_portable
wget https://github.com/renode/renode/releases/download/v1.12.0/renode-1.12.0.linux-portable.tar.gz
tar xf  renode-*.linux-portable.tar.gz -C renode_portable --strip-components=1
cd renode_portable
export PATH="`pwd`:$PATH"
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
python3 -m pip install -r tests/requirements.txt