rpm --import 'http://nu.novell.com/repo/$RCE/RES7-SUSE-Manager-Tools/x86_64/repodata/repomd.xml.key'
yum -y update
yum -y install wget curl openssh-server

# Install root certificates
yum -y install ca-certificates
# install multicast DNS plugin for nss from epel
yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install nss-mdns
# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
