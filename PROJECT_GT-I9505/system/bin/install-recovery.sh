#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9918464:64c45b5dec1d9b8b2ef8fe295da8c039041996ce; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8742912:6c5d516bb23b81967e2ed2817475538c32c77637 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 64c45b5dec1d9b8b2ef8fe295da8c039041996ce 9918464 6c5d516bb23b81967e2ed2817475538c32c77637:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
