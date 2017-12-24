#!/bin/bash

for interfaceNumber in {002..52}; do
    interface=e101-${interfaceNumber}-0
    cat << EOF > /etc/network/interfaces.d/${interface}
auto ${interface}
allow-hotplug ${interface}
iface ${interface} manual
EOF
done
