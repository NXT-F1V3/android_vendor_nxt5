DEVICE_PREBUILT := vendor/nxt5/extras

# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Copy custom boot animation
PRODUCT_COPY_FILES += device/lge/hammerhead/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Copy jar files for advanced reboot menu
PRODUCT_COPY_FILES += $(DEVICE_PREBUILT)/android.policy.jar:system/framework/android.policy.jar

# Copy init.d script for BusyBox and SuperSU su binary
PRODUCT_COPY_FILES += \
        $(DEVICE_PREBUILT)/91-busybox_linkage.sh:system/etc/init.d/91-busybox_linkage.sh

# Include SuperSU apk and su binaries
PRODUCT_COPY_FILES += \
        $(DEVICE_PREBUILT)/SuperSU-v1.99r4/common/install-recovery.sh:system/etc/ \
        $(DEVICE_PREBUILT)/.installed_su_daemon:/system/etc/.installed_su_daemon \
        $(DEVICE_PREBUILT)/SuperSU-v1.99r4/common/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
        $(DEVICE_PREBUILT)/SuperSU-v1.99r4/arm/su:system/xbin/su \
        $(DEVICE_PREBUILT)/SuperSU-v1.99r4/arm/su:system/xbin/daemonsu \
        $(DEVICE_PREBUILT)/SuperSU-v1.99r4/arm/su:system/xbin/sugote
