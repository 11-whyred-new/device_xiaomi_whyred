# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.bokeh.switch.lux=290 \
    persist.vendor.camera.HAL3.enabled=1 \
    persist.vendor.camera.depth.focus.cb=0 \
    persist.vendor.camera.exif.make=Xiaomi \
    persist.vendor.camera.expose.aux=1 \
    persist.vendor.camera.imglib.usefdlite=1 \
    persist.vendor.camera.isp.clock.optmz=0 \
    persist.vendor.camera.isp.turbo=1 \
    persist.vendor.camera.linkpreview=0 \
    persist.vendor.camera.preview.ubwc=0 \
    persist.vendor.camera.stats.test=0 \
    persist.vendor.imx376_ofilm.light.lux=275 \
    persist.vendor.imx376_ofilm.low.lux=290 \
    persist.vendor.imx376_sunny.light.lux=275 \
    persist.vendor.imx376_sunny.low.lux=290

# Display
PRODUCT_PROPERTY_OVERRIDES += \
   ro.sf.lcd_density=440

# USB debugging at boot
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# Dirac
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dirac.acs.controller=qem \
    persist.dirac.acs.storeSettings=1 \
    persist.dirac.acs.ignore_error=1

# Dirac headset effect
PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.soundfx.dirac=true \
    persist.audio.dirac.speaker=true \
    persist.vendor.camera.stats.test=5 \
    persist.vendor.flash.light.lux=340 \
    persist.vendor.flash.low.lux=390 \
    persist.vendor.imx376_ofilm.light.lux=280 \
    persist.vendor.imx376_ofilm.low.lux=310 \
    persist.vendor.imx376_sunny.light.lux=280 \
    persist.vendor.imx376_sunny.low.lux=310 \
    persist.vendor.ov13855_sunny.light.lux=370 \
    persist.vendor.ov13855_sunny.low.lux=385 \
    persist.vendor.s5k3l8_ofilm.light.lux=367 \
    persist.vendor.s5k3l8_ofilm.low.lux=379

PRODUCT_PROPERTY_OVERRIDES += \
    vendor.camera.hal1.packagelist=com.intsig.camscanner,com.instagram.android \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.motorola.faceunlock,com.android.camera
