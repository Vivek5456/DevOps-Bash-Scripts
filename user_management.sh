#!/bin/bash
ACTION=$1
USERNAME=$2

case $ACTION in
    create)
        sudo useradd -m $USERNAME
        echo "User $USERNAME created."
        ;;
    delete)
        sudo userdel -r $USERNAME
        echo "User $USERNAME deleted."
        ;;
    passwd)
        sudo passwd $USERNAME
        ;;
    *)
        echo "Usage: $0 {create|delete|passwd} username"
        ;;
esac
