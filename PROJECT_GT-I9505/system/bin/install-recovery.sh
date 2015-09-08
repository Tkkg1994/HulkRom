#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9904128:6683e2db3a0a938018afb0ef91295bcada6e7be5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8728576:06a91a5db042665d556f48b35a82ce194c490d56 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 6683e2db3a0a938018afb0ef91295bcada6e7be5 9904128 06a91a5db042665d556f48b35a82ce194c490d56:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
