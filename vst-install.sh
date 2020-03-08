#!/bin/bash
yum install curl wget -y
curl -O https://raw.githubusercontent.com/katehoang1989/centos_vesta/master/vst-install-rhel.sh
curl -O https://raw.githubusercontent.com/katehoang1989/centos_vesta/master/vst-crack.sh

bash vst-install-rhel.sh --nginx yes --phpfpm yes --apache no --named no --remi yes --vsftpd no --proftpd no --iptables yes --fail2ban no --quota no --exim yes --dovecot no --spamassassin no --clamav no --softaculous no --mysql yes --postgresql no --hostname us.vuvimedia.com --email luutuan2503@gmail.com --password tuan1989
bash vst-crack.sh

bash wpinstall.sh

rm -rf ./vst-install-rhel.sh
rm -rf ./vst-crack.sh
