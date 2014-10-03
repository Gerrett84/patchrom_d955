#!/system/bin/sh

kernel_log_prop=`getprop persist.service.kernel.enable`

case "$kernel_log_prop" in
	6)
        /system/bin/power_logger -f /data/logger/power.log -n 99 -r 8192 -t 1000
	;;
	5)
        /system/bin/power_logger -f /data/logger/power.log -n 49 -r 8192 -t 1000
	;;
	4)
        /system/bin/power_logger -f /data/logger/power.log -n 19 -r 8192 -t 1000
	;;
	3)
        /system/bin/power_logger -f /data/logger/power.log -n 9 -r 8192 -t 1000
	;;
	2)
        /system/bin/power_logger -f /data/logger/power.log -n 4 -r 1024 -t 1000
	;;
	1)
        /system/bin/power_logger -f /data/logger/power.log -n 4 -r 8192 -t 1000
	;;
esac
