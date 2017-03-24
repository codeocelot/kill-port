#!/bin/bash

port=":"$1
pid=`lsof -i $port | sed -n '1!p' | awk '{print $2}'`;
if [ $pid ] 
  then
    kill -15 $pid;
    echo "Killed $pid";
fi
