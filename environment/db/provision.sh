# Keys may become outdated
# Setting up MongoDB keys
sudo apt-get update -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv D68FA50FEA312927
echo "deb https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

# Pre install checks
sudo apt-get update -y
sudo apt-get upgrade -y

# Downloading a specific version of mongodb
sudo apt-get install -y mongodb-org=3.2.20 mongodb-org-server=3.2.20 mongodb-org-shell=3.2.20 mongodb-org-mongos=3.2.20 mongodb-org-tools=3.2.20
# For the purpose of the exercise change /etc/mongod.conf network interfaces to 0.0.0.0



# if mongo is is set up correctly these will be successful
sudo systemctl restart mongod
sudo systemctl enable mongod

