# Run on Linux
# Command depends on Linux distribution

firewall-cmd --zone=home --change-interface=eth0
firewall-cmd --zone=home --add-port=5986/tcp
