sudo apt update -y

apt install python3-pip -y
apt install ansible -y
pip install pywinrm requests-ntlm -y
ansible-galaxy collection install google.cloud

git clone https://github.com/olomg48/demo_ms.git /opt/demo
chmod -R 777 /opt/demo

#ansible-playbook -i inventory/hosts deploy.yaml -e "version=1.0 json_name=central-apex-450419-r2-b716b5e92620.json json_url="