#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo "Run as root"
    exit 1
fi

echo "1) Disable bcachefs hook"
echo "2) Enable bcachefs hook"
read -r opt

if [ "$opt" = "1" ]; then

    if [ -e /usr/lib/initcpio/install/bcachefs-rollback ]; then
        read -r -p "Delete install rollback? (y/n): " a
        [ "$a" = "y" ] && rm -rf /usr/lib/initcpio/install/bcachefs-rollback
    fi

    if [ -e /usr/lib/initcpio/hooks/bcachefs-rollback ]; then
        read -r -p "Delete hook rollback? (y/n): " a
        [ "$a" = "y" ] && rm -rf /usr/lib/initcpio/hooks/bcachefs-rollback
    fi

elif [ "$opt" = "2" ]; then

    [ -d /usr/lib/initcpio/hooks ] || exit 1
    [ -d /usr/lib/initcpio/install ] || exit 1

    cp -r ./hooks/* /usr/lib/initcpio/hooks/
    cp -r ./install/* /usr/lib/initcpio/install/

else
    echo "Invalid option"
    exit 1
fi
