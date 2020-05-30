# Run on Linux after adding the following to /etc/ssh/sshd_config:
#
# PubkeyAuthentication yes
# Subsystem       powershell    /opt/microsoft/powershell/7/pwsh -sshs -NoLogo -NoProfile

service sshd restart
