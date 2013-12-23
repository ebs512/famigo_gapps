#!/sbin/sh

if (grep -qi "hammerhead" /proc/cpuinfo ); then
  echo "Installing Nexus 5 Specific Libs"
  cp -a /tmp/photosphere/hammerhead/* /system/lib/
fi

if (grep -qi "manta" /proc/cpuinfo ); then
  echo "Installing Nexus 10 Specific Libs"
  cp -a /tmp/photosphere/manta/* /system/lib/
fi

if (grep -qi "tuna" /proc/cpuinfo ); then
  echo "Installing GALAXY Nexus Specific Libs"
  cp -a /tmp/photosphere/tuna/* /system/lib/
fi

rm -rf /tmp/photosphere
