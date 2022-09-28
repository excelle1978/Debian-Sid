sudo apt install tomcat9 tomcat9-admin tomcat9-common tomcat9-user
wget https://downloads.apache.org/guacamole/1.3.0/binary/guacamole-1.3.0.war
sudo mv guacamole-1.3.0.war /var/lib/tomcat9/webapps/guacamole.war
sudo systemctl restart tomcat9 guacd
