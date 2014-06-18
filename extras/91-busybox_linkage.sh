for cmd in $(busybox --list);do ln -s /system/xbin/$cmd $cmd; done; chmod ug+s /system/xbin/su; ln -s /system/xbin/su su; /system/xbin/su --daemon;
