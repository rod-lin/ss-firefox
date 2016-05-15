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

sslink ss://cmM0LW1kNTpPaU9zUlN2WkB4UXNXZWo4UTIxVHlpcFZkTmtVQmk5VGFrM1d0NmNaOC5wcm9ub2RlLnB3OjI3OTY4 -b # US
# sslink ss://cmM0LW1kNTpPaU9zUlN2WkBkdmZ0cGx4MmF2cGdzeXRjcWJkeG1ta2diMmlncXZhdC5wcm9ub2RlLnB3OjI3OTY4 -b # Hong Kong 2
# sslink ss://cmM0LW1kNTpPaU9zUlN2WkB3NnRnYm9odXV1N3dkamlpNzVvcDBpYnc1ZnB6cDVhZi5wcm9ub2RlLnB3OjI3OTY4 -b # Hong Kong 3
ssopen-ff