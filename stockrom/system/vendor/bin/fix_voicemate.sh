#!/system/bin/sh
# This script installs apks in /system/uninstallable directory
# when the phone is first booted after the factory reset.
#
# Apks installed via this script can be uninstalled by user.
# However, uninstallation does not remove an apk from the system image.
# Furthermore, the apks are again installed after a factory reset.
#
# Apks listed in the config file /cust/config/appmanager.cfg won't
# be neither installed or managed by Application Manager.


       CURRENT=`getprop ro.build.version.incremental 0`
       TAG2=`getprop persist.lge.appbox.qvoice 0`
            if [ "$TAG2" != "$CURRENT" ]; then
                for file in $(ls /data/app-system/com.lge.pa-* )
     	        do
        	if [ "$file" != "." -a "$file" != ".." ]
		then
			if [ -f /system/vendor/carrier/system/LGQVoice.apk ]; then
			`cat /system/vendor/carrier/system/LGQVoice.apk > "$file"`
			fi
		fi
	     done
	     
	                     for file in $(ls /data/app-system/com.lge.nlp-* )
     	        do
        	if [ "$file" != "." -a "$file" != ".." ]
		then
		if [ -f /system/vendor/carrier/system/LGNLPService.apk ]; then
			`cat /system/vendor/carrier/system/LGNLPService.apk > "$file"`
			fi
		fi
	     done
	     
	                     for file in $(ls /data/app-system/com.lge.mtalk.sf-* )
     	        do
        	if [ "$file" != "." -a "$file" != ".." ]
		then
		if [ -f /system/vendor/carrier/system/LGTTSPAService.apk ]; then
			`cat /system/vendor/carrier/system/LGTTSPAService.apk > "$file"`
			fi
		fi
	     done
	     
	     	                     for file in $(ls /data/app-system/com.rsupport.rs.activity.lge-* )
     	        do
        	if [ "$file" != "." -a "$file" != ".." ]
		then
		if [ -f /system/vendor/carrier/system/LGRemoteCall.apk ]; then
			`cat /system/vendor/carrier/system/LGRemoteCall.apk > "$file"`
			fi
		fi
	     done
	     
	     setprop persist.lge.appbox.qvoice "$CURRENT"
	     
            fi  

exit 0