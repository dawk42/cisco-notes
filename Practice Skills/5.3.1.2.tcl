!! 5.3.1.2 PTA
Configure S1 with the following initial settings:
-       Hostname
-       Banner that includes the word warning
-       Console port login and password cisco
-       Encrypted enable password of class
-       Encrypt plain text passwords
-       Management interface addressing
·         Configure SSH to secure remote access with the following settings:
-       Domain name of cisco.com
-       RSA key-pair parameters to support SSH version 2
-       Set SSH version 2
-       User admin with secret password ccna
-       VTY lines only accept SSH connections and use local login for authentication
·         Configure the port security feature to restrict network access:
-       Disable all unused ports.
-       Set the interface mode to access.
-       Enable port security to allow only two hosts per port.
-       Record the MAC address in the running configuration.
-       Ensure that port violations disable ports.


enable
configure terminal
!!Hostname
hostname S1
!!  banner
banner motd #Warning#
!!  Console
line console 0
password cisco
login
exit
no ip domain-lookup
enable secret class
!! Encrypt passwords
service password-encryption
!! Management interface (vlan)
interface vlan 1
ip address 10.10.10.2 255.255.255.0
no shutdown
exit
!! Domain
ip domain-name cisco.com
!! SSH
ip ssh version 2
crypto key generate rsa general-keys modulus 1024
username admin privilege 15 secret 0 ccna
!! VTY lines
line vty 0 15
login local
transport input ssh
exit
!! Paranoia
interface range f0/3-24, g0/1-2
shutdown
!! Port Security
interface range f0/1-2
switchport mode access
switchport port-security
switchport port-security maximum 2
switchport port-security mac-address sticky
