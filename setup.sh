#/bin/bash

# Setup environment with i3,urxvt

apt install i3 dmenu rxvt-unicode feh -y
mkdir ~/.config/i3
cp ~/kali-setup-script/i3-config ~/.config/i3/config
cp ~/kali-setup-script/Xresources ~/.Xresources
# cp ~/kali-setup-script/wallpaper.jpg ~/Pictures/
xrdb Xresources

# Install go and fuzzing tools gobuster and ffuf

cd /tmp
wget https://dl.google.com/go/go1.14.3.linux-amd64.tar.gz
tar -C /usr/local -xvf go1.14.3.linux-amd64.tar.gz
cd
echo "export PATH=$PATH:/usr/local/go/bin:/root/go/bin" >> ~/.bashrc
source ~/.bashrc
go get github.com/OJ/gobuster
go get github.com/ffuf/ffuf


# Tools installation

gem install evil-winrm
## Impacket tools 
  cd /tmp
  wget https://github.com/SecureAuthCorp/impacket/releases/download/impacket_0_9_21/impacket-0.9.21.tar.gz
  tar xzvf impacket-0.9.21.tar.gz
  cd impacket-0.9.21
  pip install .


# tools in /opt

cd /opt
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries
wget https://download.sysinternals.com/files/PSTools.zip -P /tmp;unzip /tmp/PSTools.zip -d /opt/PSTools
## Crackmapexec 
 apt-get install -y libssl-dev libffi-dev python-dev build-essential
 git clone --recursive https://github.com/byt3bl33d3r/CrackMapExec
 cd CrackMapExec
 python3 setup.py install



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
