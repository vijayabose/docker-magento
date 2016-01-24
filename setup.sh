##
# Set up script to clone magento
# Run this script only for the first time when you set up the application
##
docker rm shop
read -p "Are you building a new project in magento? (y/n)" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	mkdir $(pwd)/www
	pushd $(pwd)/www
	git clone https://github.com/OpenMage/magento-mirror.git magento
	popd
fi
docker build -t magento .