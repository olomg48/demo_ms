sudo apt update -y

apt install python3-pip -y
apt install ansible -y
pip install pywinrm requests-ntlm -y
ansible-galaxy collection install google.cloud