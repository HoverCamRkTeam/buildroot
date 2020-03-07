################################################################################
#
# hid3mtouch
#
################################################################################

HID3MTOUCH_VERSION = 1.0
HID3MTOUCH_SITE = $(TOPDIR)/../../SiBeamHID3/hid3mtouch
HID3MTOUCH_SITE_METHOD = local

define HID3MTOUCH_BUILD_CMDS
	cd $(@D); $(TARGET_CC) -pthread -o hid3mtouch *.c
endef

define HID3MTOUCH_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/hid3mtouch $(TARGET_DIR)/usr/bin/hid3mtouch
	$(INSTALL) -D -m 0755 $(@D)/S90hid3mtouch $(TARGET_DIR)/etc/init.d/S90hid3mtouch
	$(INSTALL) -D -m 0755 $(@D)/upgrade_firmware $(TARGET_DIR)/upgrade_firmware
endef

$(eval $(generic-package))

