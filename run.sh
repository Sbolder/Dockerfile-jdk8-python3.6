# build the image
# Run this command in the Docker subfolder of the spa
#docker build --tag jdk8python --build-arg httpproxy='http://itbofpprxint.crifnet.com:8080' --build-arg httpsproxy='http://itbofpprxint.crifnet.com:8080' .
docker build --tag jdk8python .