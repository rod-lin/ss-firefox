# ss-firefox
Shadowsocks config tool for Firefox

## Install

install dependencies by pip<br>
    pip install shadowsocks
    pip install marionette-client # if you want to skip the manual setting of Firefox proxy
<br>
4 commands are available:<br>
    sslink.py: parese ss:// link and run sslocal
    ssopen-ff.py: using marionette to config proxy in Firefox(when it's running and have been started with argument -marionette)
    ssopen.sh & ssclose.sh: more simple way to open/close socks proxy
<br>
tip: if you want to use ssopen-ff.py or ssopen.sh or ssclose.sh, run Firefox with -marionette first
