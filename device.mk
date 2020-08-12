#
#Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

DEVICE_PATH := device/xiaomi/whyred

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay \
    $(DEVICE_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_TARGETS := *

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# APEX
TARGET_SUPPORTS_UPDATABLE_APEX := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product-if-exists, vendor/prebuilts/config/apex.mk)

# Dexpreopt
PRODUCT_DEXPREOPT_SPEED_APPS += \
    Launcher3QuickStep \
    Settings \
    SystemUI

# Permissions
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.ipsec_tunnels.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.ipsec_tunnels.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.vulkan.deqp.level-2020-03-01.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vulkan.deqp.level.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# AuthSecret 
PRODUCT_PACKAGES += \
    android.hardware.authsecret@1.0-service

# Perf
PRODUCT_COPY_FILES += \ 
    $(DEVICE_PATH)/configs/perfconfigstore.xml:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perfconfigstore.xml

# Adapt Launch
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/lm/AdaptLaunchFeature.xml:$(TARGET_COPY_OUT_VENDOR)/etc/lm/AdaptLaunchFeature.xml

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@6.0-impl:32 \
    android.hardware.audio.effect@6.0-impl:32 \
    android.hardware.audio.effect@2.0-service \
    android.hardware.audio.service \
    android.hardware.soundtrigger@2.3-impl:32 \
    audio.a2dp.default \
    audio_amplifier.sdm660 \
    audio.primary.sdm660 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinyplay \
    tinycap \
    tinymix \
    tinypcminfo

PRODUCT_PACKAGES += \
    android.hardware.bluetooth.audio@2.0-impl:32 \
    audio.bluetooth.default

PRODUCT_PACKAGES += \
    libhdmiedid \
    libhfp \
    libsndmonitor \
    libldacBT_dec \
    libbthost_if

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(DEVICE_PATH)/audio/audio_output_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_output_policy.conf \
    $(DEVICE_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/audio/audio_tuning_mixer.txt:$(TARGET_COPY_OUT_VENDOR)/etc/audio_tuning_mixer.txt \
    $(DEVICE_PATH)/audio/graphite_ipc_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/graphite_ipc_platform_info.xml \
    $(DEVICE_PATH)/audio/listen_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/listen_platform_info.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_in_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_in_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/bluetooth_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/bluetooth_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService-Soong \
    com.dsi.ant.antradio_library \
    com.dsi.ant@1.0.vendor

PRODUCT_COPY_FILES += \
    external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.dsi.ant.antradio_library.xml

# Biometrics
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.whyred

PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Bluetooth
PRODUCT_PACKAGES += \
    libbthost_if \
    vendor.qti.hardware.btconfigstore@1.0.vendor \
    vendor.qti.hardware.btconfigstore@2.0.vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.4:64 \
    android.hardware.camera.device@3.5:64 \
    android.hardware.camera.provider@2.4:64 \
    android.hardware.camera.provider@2.4-impl:32 \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.5:64 \
    libdng_sdk.vendor \
    vendor.qti.hardware.camera.device@1.0:64

# Component overrides
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/component-overrides.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sysconfig/component-overrides.xml

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    services-ext

# Consumerir
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.consumerir.xml

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-impl

# Display
PRODUCT_PACKAGES += \
    gralloc.sdm660 \
    hwcomposer.sdm660 \
    memtrack.sdm660 \
    libdisplayconfig \
    libtinyxml \
    libqdMetaData \
    libqdMetaData.system

PRODUCT_PACKAGES += \
    android.frameworks.displayservice@1.0_32 \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.allocator@3.0-impl \
    android.hardware.graphics.allocator@4.0-impl \
    android.hardware.graphics.mapper@2.0-impl-2.1 \
    android.hardware.graphics.composer@2.1-impl:64 \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    android.hardware.renderscript@1.0-impl \
    android.frameworks.displayservice@1.0 \
    vendor.display.config@1.1

# Device Settings
PRODUCT_PACKAGES += \
    XiaomiParts

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.3-service.clearkey

PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# Framework detect
PRODUCT_PACKAGES += \
    libqti_vndfwk_detect.vendor \
    libvndfwk_detect_jni.qti.vendor

# Google Photos
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/pixel_2016_exclusive.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/pixel_2016_exclusive.xml

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Freeform Multiwindow
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.freeform_window_management.xml

# GPS / Location
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1-impl-qti \
    android.hardware.gnss@2.1-service-qti \
    libbatching \
    libgeofencing \
    libgnss \
    libsensorndkbridge \
    libwifi-hal-ctrl

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/gps/etc/apdr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/apdr.conf \
    $(DEVICE_PATH)/gps/etc/flp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/flp.conf \
    $(DEVICE_PATH)/gps/etc/gps.conf:$(TARGET_COPY_OUT_VENDOR)/etc/gps.conf \
    $(DEVICE_PATH)/gps/etc/izat.conf:$(TARGET_COPY_OUT_VENDOR)/etc/izat.conf \
    $(DEVICE_PATH)/gps/etc/lowi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/lowi.conf \
    $(DEVICE_PATH)/gps/etc/sap.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sap.conf \
    $(DEVICE_PATH)/gps/etc/xtwifi.conf:$(TARGET_COPY_OUT_VENDOR)/etc/xtwifi.conf

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Hotword blobs
$(call inherit-product, vendor/xiaomi/google/google.mk)

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhidltransport.vendor \
    libhwbinder \
    libhwbinder.vendor

# IDC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/idc/uinput-fpc.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-fpc.idc \
    $(DEVICE_PATH)/idc/uinput-goodix.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/uinput-goodix.idc

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml

# Init
PRODUCT_PACKAGES += \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qti.dcvs.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc \
    fstab.qcom

# IPACM
PRODUCT_PACKAGES += \
    ipacm \
    IPACM_cfg.xml

# Iorap
PRODUCT_PACKAGES += \
    iorap-app-startup-runner

# IRQ
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/keylayout/uinput-fpc.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-fpc.kl \
    $(DEVICE_PATH)/keylayout/uinput-goodix.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/uinput-goodix.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.whyred

# LiveDisplay native
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-sdm \
    vendor.lineage.livedisplay@2.0-service-sysfs

# Media
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(DEVICE_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(DEVICE_PATH)/configs/media_codecs_vendor.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor.xml \
    $(DEVICE_PATH)/configs/media_codecs_vendor_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_vendor_audio.xml \
    $(DEVICE_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    $(DEVICE_PATH)/configs/media_codecs_sdm660_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_sdm660_v1.xml \
    $(DEVICE_PATH)/configs/media_codecs_performance_sdm660_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance_sdm660_v1.xml \
    $(DEVICE_PATH)/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml \
    $(DEVICE_PATH)/configs/media_profiles_sdm660_v1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_sdm660_v1.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml

# Media Extensions
PRODUCT_PACKAGES += \
    libavmediaserviceextensions \
    libmediametrics \
    libregistermsext \
    mediametrics \
    android.hardware.media.omx@1.0-impl

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Recorder
PRODUCT_PACKAGES += \
    KimciRecorder

# OMX
PRODUCT_PACKAGES += \
    libavservices_minijail \
    libavservices_minijail.vendor \
    libc2dcolorconvert \
    libhypv_intercept \
    libmm-omxcore \
    libOmxSwVencHevc \
    libOmxCore \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxG711Enc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    libOmxSwVencHevc

# Perf
PRODUCT_PACKAGES += \
    libqti-perfd-client

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.3-service.xiaomi_sdm660-libperfmgr \
    android.hardware.power.stats@1.0-service.mock

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/perf/perf-profile0.conf:$(TARGET_COPY_OUT_VENDOR)/etc/perf/perf-profile0.conf

# Protobuf
PRODUCT_PACKAGES += \
    libprotobuf-cpp-full-vendorcompat \
    libprotobuf-cpp-lite-vendorcompat

# Public Libraries
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/public.libraries.txt:$(TARGET_COPY_OUT_VENDOR)/etc/public.libraries.txt

# Low power Whitelist
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio.config@1.1 \
    android.hardware.radio@1.5 \
    android.hardware.secure_element@1.1 \
    libavservices_minijail.vendor \
    libjson \
    libprotobuf-cpp-full \
    librmnetctl

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl:64 \
    android.hardware.sensors@1.0-service \
    android.hardware.sensors@2.0 \
    android.hardware.sensors@2.1 \
    android.frameworks.sensorservice@1.0

# Shims
PRODUCT_PACKAGES += \
    libcamera_shim

# Tethering
PRODUCT_PACKAGES += \
    TetheringConfigOverlay

# Speed profile services and wifi-service to reduce RAM and storage
PRODUCT_SYSTEM_SERVER_COMPILER_FILTER := speed-profile
PRODUCT_USE_PROFILE_FOR_BOOT_IMAGE := true 
PRODUCT_DEX_PREOPT_BOOT_IMAGE_PROFILE_LOCATION := frameworks/base/config/boot-image-profile.txt
PRODUCT_ALWAYS_PREOPT_EXTRACTED_APK := true
USE_DEX2OAT_DEBUG := false PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false
WITH_DEXPREOPT_DEBUG_INFO := false

# Telephony
PRODUCT_PACKAGES += \
    qti_telephony_hidl_wrapper.xml \
    qti_telephony_utils.xml \
    qti-telephony-hidl-wrapper \
    qti-telephony-utils \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.qti

# Thermal Conf
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/thermal/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf \
    $(DEVICE_PATH)/configs/thermal/thermal-engine-map.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-map.conf \
    $(DEVICE_PATH)/configs/thermal/thermal-engine-normal.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-normal.conf \
    $(DEVICE_PATH)/configs/thermal/thermal-engine-streaming.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-streaming.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-arvr.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-arvr.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-extreme.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-extreme.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-nolimits.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-nolimits.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-phone.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-phone.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-pubgmhd.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-pubgmhd.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-tgame.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-tgame.conf \
		$(DEVICE_PATH)/configs/thermal/thermal-engine-high.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-high.conf

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    vendor.qti.hardware.vibrator.service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/excluded-input-devices.xml:vendor/etc/excluded-input-devices.xml

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwifi-hal-qcom \
    WifiOverlay \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini

# Via
PRODUCT_PACKAGES += \
    Via

# Youtube by Vanced Team
PRODUCT_PACKAGES += \
    Youtube

PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/Youtube/lib/arm64/libc++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libc++_shared.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libcronet.76.0.3786.0.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libcronet.81.0.4021.0.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libdrishti_jni_native.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libdrishti_jni_native.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libfilterframework_jni.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libfilterframework_jni.so \
    $(DEVICE_PATH)/Youtube/lib/arm64/libframesequence.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libframesequence.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libgvr.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libgvr.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libgvr_audio.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libgvr_audio.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libjsc.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libjsc.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libopusJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libopusJNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libopusV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libopusV2JNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libunified_template_resolver.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libunified_template_resolver.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libvpx.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpx.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libvpxV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpxV2JNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libvpxYTJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libvpxYTJNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libwebp_android.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libwebp_android.so \
	$(DEVICE_PATH)/Youtube/lib/arm64/libyoga.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm64/libyoga.so \
    $(DEVICE_PATH)/Youtube/lib/arm/libc++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libc++_shared.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libcronet.76.0.3786.0.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libcronet.81.0.4021.0.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libdrishti_jni_native.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libdrishti_jni_native.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libfilterframework_jni.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libfilterframework_jni.so \
    $(DEVICE_PATH)/Youtube/lib/arm/libframesequence.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libframesequence.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libgvr.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libgvr.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libgvr_audio.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libgvr_audio.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libjsc.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libjsc.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libopusJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libopusJNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libopusV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libopusV2JNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libunified_template_resolver.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libunified_template_resolver.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libvpx.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpx.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libvpxV2JNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpxV2JNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libvpxYTJNI.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libvpxYTJNI.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libwebp_android.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libwebp_android.so \
	$(DEVICE_PATH)/Youtube/lib/arm/libyoga.so:$(TARGET_COPY_OUT_SYSTEM)/app/Youtube/lib/arm/libyoga.so

# Soong
PRODUCT_BOARD_PLATFORM := sdm660
PRODUCT_USES_QCOM_HARDWARE := true

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/whyred/whyred-vendor.mk)
