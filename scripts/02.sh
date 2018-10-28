#!/bin/bash
echo 'apt-get update>> /var/log/update_script.log && apt-get upgrate>> /var/log/update_script.log'>> ~/update.sh

echo '0 4 * * 1 sh /root/update.sh' | crontab
