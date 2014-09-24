#!/system/bin/sh

mount -o rw,remount /system;

dir=$(dirname -- "$0");

### Make proper directives ###

mkdir /etc/cron.d/;

### Move files ###

cp $dir/Z_cron/cron /etc/init.d;
cp -R $dir/Z_cron/hourly /etc/cron.d/hourly;
cp -R $dir/Z_cron/daily /etc/cron.d/daily;
cp -R $dir/Z_cron/minutely /etc/cron.d/minutely;
cp -R $dir/Z_cron/crontabs /etc/cron.d/crontabs;

chmod 755 /etc/init.d/cron;

chmod 755 /etc/cron.d;

chmod 755 /etc/cron.d/*;

chmod 755 /etc/cron.d/*/*;

mount -o ro,remount /system;
