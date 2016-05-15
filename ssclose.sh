#! /bin/bash

name="sslocal"
user=`whoami`
uid=`id -u $user`

pid_set=`ps -C "$name" h -o euser,pid,args|awk '{ if (($1==uid || $1==user) && match($0, name)) printf("%s\n", $2); }' uid=$uid user=$user name="$name"`
name="sslink"
pid_set="$pid_set`ps -C "$name" h -o euser,pid,args|awk '{ if (($1==uid || $1==user) && match($0, name)) printf("%s\n", $2); }' uid=$uid user=$user name="$name"`"

for pid in $pid_set
do
	kill $pid
	sleep 1
	kill -9 $pid
done

ssopen-ff close
