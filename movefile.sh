sudo mv /etc/haproxy/haproxy.cfg{,.original}
sudo cp /tmp/ha/haproxy.cfg /etc/haproxy/
sudo service haproxy restart
