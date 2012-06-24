#!/bin/sh
sensors -A k10temp-pci-00c3 | grep temp | cut -d+ -f2 -s | cut -d\( -f1
