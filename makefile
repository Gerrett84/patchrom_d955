#
# Makefile for d955
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_flex.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/flex

# All apps from original ZIP, but has smali files chanded

local-modified-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps :=

local-miui-modified-apps :=

include phoneapps.mk

# Density
local-density := XHDPI

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
local-pre-zip-misc:
#	cp -r stockrom/data/app/ $(ZIP_DIR)/data/app
	cp -rf other/system $(ZIP_DIR)/
#	mv $(ZIP_DIR)/system/framework/framework_ext.jar $(ZIP_DIR)/system/framework/framework2.jar &
#	sed -i '/# end build properties/r other/customize.prop' $(ZIP_DIR)/system/build.prop
	rm -rf $(ZIP_DIR)/system/apps
	rm -rf $(ZIP_DIR)/system/Preload
	rm -rf $(ZIP_DIR)/system/priv-app
	rm -rf $(ZIP_DIR)/system/vendor/carrier
	rm -f $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	for apk in $(ZIP_DIR)/data/miui/preinstall_apps/*.apk; do \
		$(AAPT) d --values resources $$apk | grep 'id=127 packageCount' | sed -e "s/^.*name=//" >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt; \
	done
	for apk in $(ZIP_DIR)/data/miui/cust/preinstall_apps/*.apk; do \
		$(AAPT) d --values resources $$apk | grep 'id=127 packageCount' | sed -e "s/^.*name=//" >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt; \
	done
	cat $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt | wc -l > $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	cat $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	rm -f $(ZIP_DIR)/system/etc/enforcecopyinglibpackages_tmp.txt
	$(TOOL_DIR)/gen_res_conf.sh other/res_overlay_conf.txt $(ZIP_DIR)/system/app $(ZIP_DIR)/system/etc
#	cp other/install-recovery.sh $(ZIP_DIR)/system/etc/install-recovery.sh

out/framework_ext.jar : out/framework.jar

%.phone : out/%.jar
	@echo push -- to --- phone
	adb remount
	adb push $< /system/framework
	adb shell chmod 644 /system/framework/$*.jar
	#adb shell stop
	#adb shell start
	#adb reboot

%.sign-plat : out/%
#%.sign-plat : /home/gexudong/libra.jbmiui/out/target/product/maguro/system/app/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*
