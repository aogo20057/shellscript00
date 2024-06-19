#!/bin/bash

yum -y install epel-release
yum -y install httpd mod_ssl
yum -y install boxes cowsay

mkdir -p /www
cat << EOF > /www/index.html
<pre>
$(cowsay -f dragon-and-cow LUNUX | boxes -boy)
<pre>
EOF

sed -i 's#^DocumentRoot "/var/www/html"#DocumentRoot "/www#' /etc/httpd/conf/httpd.conf
sed -i 's#^<Directory "/var/www/html>#<Directory "/www>#' /etc/httpd/conf/httpd.conf

systemctl restart httpd
systemctl enable httpd

