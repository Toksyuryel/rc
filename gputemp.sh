#!/bin/sh
sensors -A radeon-pci-0100 | grep temp | cut -d+ -f2 -s
