# rm -rf 
#rm -rf hardware/qcom-caf/msm8998/display
#rm -rf hardware/qcom-caf/msm8998/media
#rm -rf hardware/qcom-caf/msm8998/audio
#rm -rf frameworks/base
#rm -rf packages/apps/Settings
#rm -rf frameworks/av#
#rm -rf kernel/xiaomi/sdm660
# git clone
git clone https://github.com/SakilMondal/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/audio
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-18.1-caf-msm8998 hardware/qcom-caf/msm8998/media
#git clone https://github.com/dotMod/android_frameworks_base -b dot11 frameworks/base
#git clone https://github.com/dotMod/android_packages_apps_Settings -b dot11 packages/apps/Settings
#git clone https://github.com/dotMod/android_frameworks_av-1 -b dot11 frameworks/av
#git clone https://github.com/11-whyred-new/MiuiCamera -b cr-9.0 vendor/MiuiCamera
#git clone https://github.com/predator112/android_kernel_xiaomi_sdm660_southwest -b 11.0-eas-wifi-r kernel/xiaomi/sdm660

#rm -rf external/tinycompress
git clone https://github.com/pkm774/external_tinycompress -b ks-aosp.lnx.3.0.r15-rel external/tinycompress

#rm -rf external/tinyalsa
git clone https://source.codeaurora.org/quic/la/platform/external/tinyalsa -b ks-aosp.lnx.3.0.r15-rel external/tinyalsa
