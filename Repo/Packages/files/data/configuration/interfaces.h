# Custom Networking Configuration File
auto lo
iface lo inet loopback
 
source /etc/network/interfaces.d/*
 
auto eth0

# Main IPv4
iface eth0 inet static
	address 176.58.103.28/24
	gateway 176.58.103.1

# Secondary IPv4
iface eth0 inet static
  	address 178.79.134.224/24

# Main IPv6
iface eth0 inet6 static
  address 2a01:7e00::f03c:92ff:fe1d:d473/64
  gateway fe80::1

# Adding additional IPv6 addresses.

# customers.aleksd2000.cc
iface eth0 inet6 static
address 2a01:7e00:e000:1ed::1/64

# add your additional addresses below here following similar syntax as above.

iface eth0 inet6 static
  address 2a01:7e00:e000:bd::1/64
# IPv6 Address for www.aleksd2000.cc

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::2/64
# IPv6 Address for www.linuxutopia.com

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::3/64
#IPv6 Addresses for mail.linuxutopia.com

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::4/64
# IPv6 Addresses for minecraft-private.linuxutopia.com

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::5/64
# IPv6 Address for ns1.linuxutopia.com

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::6/64
# IPv6 Address for ns2.linuxutopia.com

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::7/64
# IPv6 Address for ns1.aleksd2000.cc

iface eth0 inet6 static
  address 2a01:7e00:e000:00bd::8/64
# IPv6 Address for ns2.aleksd2000.cc

# CRAFT Addresses only below!
iface eth0 inet6 static
  address 2a01:7e00:e000:01ef::1/64

iface eth0 inet6 static
  address 2a01:7e00:e000:01ef::2/64

iface eth0 inet6 static
  address 2a01:7e00:e000:01ef::3/64

# Personal Servers on this IPv6 ONLY - These are Personal Address for Admin!!
iface eth0 inet6 static
  address 2a01:7e00:e000:022c::1/64
iface eth0 inet6 static
  address 2a01:7e00:e000:022c::2/64
iface eth0 inet6 static
  address 2a01:7e00:e000:022c::3/64
iface eth0 inet6 static
  address 2a01:7e00:e000:022c::4/64
iface eth0 inet6 static
  address 2a01:7e00:e000:022c::5/64

