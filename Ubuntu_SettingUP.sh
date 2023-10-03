# This is to set up a new ubuntu server for the Nextjs App:

## Updating Packages
sudo apt update

## Installation of Latest Nodejs
### Setting Up the NodeSource Repository
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
### Installation of Nodejs via “apt”
sudo apt install nodejs -y
### Update System Packages to apply the newly installed packages
sudo apt update
### Confirmation of node's installation and version
node --version

## Installation of PostGreSQL
### Adding Official Repository
#### 1
sudo apt install wget ca-certificates
#### 2
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
#### 3
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
### Installation operation of PostgreSQL
#### 1
sudo apt update
#### 2
apt install postgresql postgresql-contrib
### Checking the PostgreSQL status (should have 'Active: active' within its details)
sudo service postgresql status
### To Start Using PostgreSQL:
#### sudo -u postgres psql
### NOTE: May need (maybe in the future) to install the Server one in order to make it accessible externally (i.e. to access the DB externall of the Host Machine)

## Installation of Nginx
### Updation of the Package list
sudo apt update
### Installation of the Server
sudo apt install nginx 
### Checking if perfectly installed
sudo service nginx status

## Installation of PM2 (Process Manager 2):
sudo npm i pm2 -g



echo "-------------------------------------------------------"
echo "-------     Yeah, You're ready to go now :-) !   ------"
echo "-----                                             -----"
echo "------              Bye!                 --------------"
echo "------------------------------------------------"
echo " Do Not forget  to set up the Reversing Proxy Part ! "

##### The End.
