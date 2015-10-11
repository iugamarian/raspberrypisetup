# raspberrypisetup
Setup scripts to personalize Raspbian or ArchLinuxARM for my needs.

Anyone can fork my scripts and make them their own, changing them as they want.

After the first boot of a freshly installed Raspbian and completing raspi-config I run:

sh rpiarchppp      - To install Arch on card with ppp support and further install scripts in root

sh jessiekodideb   - Worked for me - build Kodi deb for Jessie

sh rpira           - To install my modified programs (made with "sh compilaredeb" on another install
                     of raspbian connected to tor internet) without internet connection and configure
                     pppoe internet connection as I have user and password to connect to the internet. It requires the
                     folder "pppoe" containing the latest versions .deb of "libpcap0.8" "ppp" "pppoeconf" from the
                     repository as they are not installed by default and I need them.
                   
sh rpirb           - After rpira, with internet connection to update, install programs that I like, disable swap
                     and others. Requires rpiswapoff.
                   
sh rpiswapoff      - To disable swap completely

xorg.conf          - To disable screensaver and blank screen. Copy from the scripts by uncommenting
                   
destructive*       - Script that needs to be changed to install Raspbian with faster root on a stick / hardisk.
                     Creates partitions.
                  
less-destructive*  - Same as destructive but uses already made partitions (after destructive first run).
