#!/bin/bash
cd ../../../..
cd system/core
git apply -v ../../device/doogee/x5pro/patches/Remove-CAP_SYS.patch
git apply -v ../../device/doogee/x5pro/patches/Libnetutils-patch-for-oreo.patch
git apply -v ../../device/doogee/x5pro/patches/0012-PATCH-xen0n-some-MTK-services-e.g.-ril-daemon-mtk-re.patch
cd ../..
cd bionic
git apply -v ../device/doogee/x5pro/patches/LIBC-patch-for-Oreo.patch
cd ..
cd system/sepolicy
git apply -v ../../device/doogee/x5pro/patches/Add-N-stuff-to-sepolicy-(29v).patch
cd ../..
cd frameworks/av
git apply -v ../../device/doogee/x5pro/patches/wvm-access-patch-for-oreo.patch
git apply -v ../../device/doogee/x5pro/patches/0007-Disable-usage-of-get_capture_position.patch
git apply -v ../../device/doogee/x5pro/patches/0008-Partial-Revert-Camera1-API-Support-SW-encoders-for-n.patch
git apply -v ../../device/doogee/x5pro/patches/0009-add-mtk-color-format-support.patch
git apply -v ../../device/doogee/x5pro/patches/0013-fix_video_autoscaling.patch
cd ../..
cd system/netd
git apply -v ../../device/doogee/x5pro/patches/0010-wifi-tethering-fix.patch
cd ../..

