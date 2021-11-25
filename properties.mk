# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bokeh.switch.lux=290 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.depth.focus.cb=0 \
    persist.vendor.camera.exif.make=Xiaomi \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.camera.is_type=4 \
    persist.vendor.camera.is_type=4 \
    persist.camera.is_mode=4 \
    persist.vendor.camera.is_mode=4 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.stats.test=0 \
    persist.vendor.imx376_ofilm.light.lux=275 \
    persist.vendor.imx376_ofilm.low.lux=290 \
    persist.vendor.imx376_sunny.light.lux=275 \
    persist.vendor.imx376_sunny.low.lux=290 \
    persist.vendor.camera.enableAdvanceFeatures=0x347 \
    persist.camera.max.previewfps=60 \
    persist.vendor.camera.max.previewfps=60 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.camera.eis.enable=1 \
    persist.vendor.camera.eis.enable=1 \
    camera.shutter_sound.blacklist=com.android.camera \
    persist.vendor.camera.enableAdvanceFeatures=0x347 \
    persist.vendor.camera.mfnrframenum=8 \
    persist.vendor.camera.multicam.framesync=1 \
    persist.camera.fdvideo=1 \
    persist.vendor.camera.fdvideo=1

# Dualcam sat fallback setting
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.sat.fallback.dist=45 \
    persist.camera.sat.fallback.dist.d=5 \
    persist.camera.sat.fallback.luxindex=310 \
    persist.camera.sat.fallback.lux.d=50

# Support night mode 2.0
PRODUCT_PROPERTY_OVERRIDES += \
    ro.eyecare.brightness.threshold=3 \
    ro.eyecare.brightness.level=8\
    ro.hist.brightness.threshold=5

# Temporal Noise Reduction
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.tnr_cds=1 \
    persist.camera.tnr.video=1 \
    persist.vendor.camera.tnr.video=1 \
    persist.camera.tnr.preview=1 \
    persist.vendor.camera.tnr.preview=1 \
    persist.camera.tnr.snapshot=1 \
    persist.vendor.camera.tnr.snapshot=1 \
    persist.camera.llnoise=1 \
    persist.tnr.process.plates=1 \ 
    persist.vendor.tnr.process.plates=1 \
    persist.denoise.process.plates=1 \
    persist.vendor.denoise.process.plates=1 \

# Dirac
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.storeSettings=1 \
    persist.dirac.acs.ignore_error=1

# Dirac headset effect
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.soundfx.dirac=true \
    persist.audio.dirac.speaker=true

# MiuiCamera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.shutter_sound.blacklist=com.android.camera
