#!/bin/bash

for interfaceNumber in {002..52}; do
    touch /etc/network/interfaces.d/e101-${interfaceNumber}-0
done
