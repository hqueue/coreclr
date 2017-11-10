lang en_US.UTF-8
keyboard us
timezone --utc Asia/Seoul

part / --fstype="ext4" --size=3500 --ondisk=mmcblk0 --label rootfs --fsoptions=defaults,noatime

rootpw tizen
desktop --autologinuser=root
user --name root  --groups audio,video --password 'tizen'

### Tizen 4.0 Public M2
### https://developer.tizen.org/tizen/release-notes/tizen-4.0-public-m2
### https://source.tizen.org/release/tizen-4.0-m2
repo --name=unified-standard --baseurl=http://download.tizen.org/releases/milestone/tizen/4.0-unified/tizen-4.0-unified_20171027.1/repos/standard/packages/ --ssl_verify=no
repo --name=base_arm         --baseurl=http://download.tizen.org/releases/milestone/tizen/4.0-base/tizen-4.0-base_20170929.1/repos/arm/packages/ --ssl_verify=no

%packages
tar
gzip

sed
grep
gawk
perl

binutils
findutils
util-linux
lttng-ust
userspace-rcu
procps-ng
tzdata
ca-certificates


### Core FX
libicu
libuuid
libunwind
iputils
zlib
krb5
libcurl
libopenssl

%end

%post

### Update /tmp privilege
chmod 777 /tmp
####################################

%end
