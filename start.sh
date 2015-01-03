#! /bin/sh

if [ -f /mnt/config/config.ini ]
then
	rm -rf /opt/sickbeard/config.ini
	rm -rf /opt/sickbeard/sickbeard.db
#	rm -rf /opt/sickbeard/autoprocesstv/autoProcessTV.cfg
fi

ln -sf /mnt/config/config.ini /opt/sickbeard/
ln -sf /mnt/config/sickbeard.db /opt/sickbeard/sickbeard.db
#ln -sf /mnt/config/autoProcessTV.cfg /opt/sickbeard/autoprocesstv/autoProcessTV.cfg

python /opt/sickbeard/SickBeard.py