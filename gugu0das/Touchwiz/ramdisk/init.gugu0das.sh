#!/system/bin/sh

# Copyright (c) 2013, The Linux Foundation. All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of Linux Foundation nor
#       the names of its contributors may be used to endorse or promote
#       products derived from this software without specific prior written
#       permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NON-INFRINGEMENT ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
# OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
# OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

# Set Value From lss Kernel
#
# Custom by @gugu0das
# Thanks to @lsswizard
#

# INTERACTIVE
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/above_hispeed_delay
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/boost
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/boostpulse
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/boostpulse_duration
echo "300" > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
echo "300000" > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/max_freq_hysteresis
echo "0" > /sys/devices/system/cpu/cpufreq/interactive/align_windows
echo "80000" > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
echo "1 300000:32 400000:34 600000:40 700000:44 800000:49 900000:55 1100000:64 1400000:79 1700000:90 1900000:99" > /sys/devices/system/cpu/cpufreq/interactive/target_loads
echo "60000" > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
echo "-1" > /sys/devices/system/cpu/cpufreq/interactive/timer_slack
sleep 1
sync

# MMC CRC
echo "Y" > /sys/module/mmc_core/parameters/use_spi_crc

# USB FAST CHARGE
echo "1" > /sys/kernel/fast_charge/force_fast_charge

# ARCH POWER
echo "1" > /sys/kernel/sched/arch_power

# VM
echo "66" > /proc/sys/vm/swappiness
echo "1" > /proc/sys/vm/laptop_mode
echo "500" > /proc/sys/vm/dirty_expire_centisecs
echo "1000" > /proc/sys/vm/dirty_writeback_centisecs
sleep 1
sync

# TWEAK FOR BUILD.PROP
setprop pm.sleep_mode 1
setprop ro.ril.disable.power.collapse 0
setprop persist.sys.use_dithering 0
setprop wifi.supplicant_scan_interval 180
setprop power_supply.wakeup enable
setprop power.saving.mode 1
setprop ro.config.hw_power_saving 1
setprop persist.radio.add_power_save 1

# KERNEL PANIC OFF
sysctl -w vm.panic_on_oom=0
sysctl -w kernel.panic_on_oops=0
sysctl -w kernel.panic=0

# INIT.D
mount -o remount,rw /system
if [ ! -d /system/etc/init.d ]; then
    mkdir /system/etc/init.d
fi

chmod 777 /system/etc/init.d/*
busybox run-parts /system/etc/init.d

# REMOUNT
mount -o remount,ro /system
