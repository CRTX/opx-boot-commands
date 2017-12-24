#!/bin/bash

interfaces=""

for interfaceNumber in {001..52}; do
    interface=e101-${interfaceNumber}-0
    interfaces+=${interface},
    ip link set dev ${interface} up
done

interfaces=${interfaces%?}

cps_config_vlan.py --add --id 1 --vlantype 1 --port ${interfaces}
ip link set dev br1 up
