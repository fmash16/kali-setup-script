#/bin/bash

# Setup environment with i3,urxvt

sudo apt install i3 dmenu rxvt-unicode feh -y
mkdir ~/.config/i3
cp ~/kali-setup-script/i3-config ~/.config/i3/config
cp ~/kali-setup-script/Xresources ~/.Xresources
# cp ~/kali-setup-script/wallpaper.jpg ~/Pictures/
xrdb Xresources

# Install go and fuzzing tools gobuster and ffuf

cd /tmp
wget https://dl.google.com/go/go1.14.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.14.3.linux-amd64.tar.gz
cd
echo "export PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> ~/.bashrc
source ~/.bashrc
sudo go get github.com/OJ/gobuster
sudo go get github.com/ffuf/ffuf


# Tools installation

sudo gem install evil-winrm

# tools in /opt

cd /opt
sudo git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite
sudo git clone https://github.com/danielmiessler/SecLists.git
sudo git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries
sudo wget https://download.sysinternals.com/files/PSTools.zip -P /tmp;unzip /tmp/PSTools.zip -d /opt/PSTools
## Impacket tools
  sudo curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  sudo python get-pip.py
  sudo git clone https://github.com/SecureAuthCorp/impacket
  cd impacket
  sudo pip2 -r requirements.txt
  sudo python setup.py install
## Crackmapexec 
 sudo apt-get install -y libssl-dev libffi-dev python-dev build-essential
 sudo git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
 cd CrackMapExec
 pip2 install -r requirements.txt
 sudo python setup.py install



# payloads

cd
mkdir payloads
cd payloads/
mkdir linux
mkdir windows

## Linux payloads

cd ~/payloads/linux/
wget https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/linPEAS/linpeas.sh
wget https://github.com/rebootuser/LinEnum/raw/master/LinEnum.sh
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.0/pspy64
wget https://github.com/Anon-Exploiter/SUID3NUM/raw/master/suid3num.py


## Windows payloads
## many can be found in /usr/share/windows-resources in kali

cd ~/payloads/windows/
https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/raw/master/winPEAS/winPEASexe/winPEAS/bin/x64/Release/winPEAS.exe
wget https://download.sysinternals.com/files/AccessChk.zip;unzip AccessChk.zip;rm Eula.txt AccessChk.zip
cp /usr/share/windows-resources/powersploit/Privesc/PowerUp.ps1 ./
cp /opt/Ghostpack-CompiledBinaries/SharpUp.exe ./
cp /opt/Ghostpack-CompiledBinaries/Seatbelt.exe ./
