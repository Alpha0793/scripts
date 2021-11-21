#!/bin/bash


# Description:***** Script to inventory the server*****

# Author: alphamavungu93@gmail.com
# Date: October 2021




## Checking the Number of CPUs
        echo
        echo

        echo "Number of physical cpu"

        echo

        sleep 2

        nproc

        echo
        echo

## checking the memory

        echo "Memory Info"

        echo

        sleep 2
        free -m

        echo
        echo

## Checking Hard drives

        echo "hardrive"

        echo

        sleep 2

        lsblk

        echo
        echo

## Checking OS Version

        echo "OS Version"

        echo

        sleep 2

        hostnamectl | grep -i "operating System" | awk -F":" '{print $2}'

        echo
        echo

## Kernel Version Check

        echo "Kernel Version"

        echo

        sleep 4

        hostnamectl | grep -i "kernel" | awk -F":" '{print $2}'

        echo
        echo

## Checking System Bits
        echo "system Bits"

        echo

        sleep 4

        getconf LONG_BIT

        echo
        echo

## Checking Hostname
        echo "hostname"

        echo

        sleep 2

        hostname

        echo
        echo

## Checking Ip Address
        echo "Ip Address"

        echo

        sleep 2

        ifconfig | grep -P "\d{3}.\d{3}.\d{1}.\d{3}" | awk '{print $2}'

        echo
        echo

## Checking Open ports
        echo "open ports"

        echo

        sleep 2

        firewall-cmd --list-ports

        echo
        echo