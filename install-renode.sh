# create the folder and get the renode portable 1.12
mkdir renode_portable
wget https://github.com/renode/renode/releases/download/v1.12.0/renode-1.12.0.linux-portable.tar.gz

# unpack the renode on the folder renode_portable
tar xf  renode-*.linux-portable.tar.gz -C renode_portable --strip-components=1

# install mono (https://www.mono-project.com/download/stable/#download-lin)
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

# install dependencies
sudo apt-get install policykit-1 libgtk2.0-0 screen uml-utilities gtk-sharp2 libc6-dev gcc python3 python3-pip

# install the requirements
cd renode_portable
python3 -m pip install -r tests/requirements.txt