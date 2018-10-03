cd /tmp
curl "https://raw.githubusercontent.com/GarbageSal/CommonappHosts/master/hosts" -o "apphosts.temp"
sudo cp apphosts.temp /etc/hosts
rm apphosts.temp
