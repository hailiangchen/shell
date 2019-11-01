#!/bin/bash

conf_file=/root/upstream.conf

blue=172.26.1.103
green=172.26.1.109


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
    "all")
    uncomment
    ;;
esac
