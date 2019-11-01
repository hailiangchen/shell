#!/bin/bash

conf_file=/root/upstream.conf

blue=172.26.209.103
green=172.26.154.109
three=192.168.1.20


function uncomment () {
   sed -i 's/^#\(.*\)/\1/' $conf_file
}

function comment_node () {
   sed -i "s/.*$1/#&/" $conf_file
}

case $1 in
    "blue")
    uncomment
    comment_node $blue
    ;;
    "green")
    uncomment
    comment_node $green
    ;;
    "three")
    uncomment
    comment_node $three
    ;;
esac
