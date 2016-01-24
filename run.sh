##
# Start magento
# Run this when ever you are ready to use the box
##
docker rm -f shop
docker run -d -p 1009:80 -v $(pwd)/www:/var/www --name shop magento web