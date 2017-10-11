# Tomcat

Build:
```make build````

Run:
```make````

Clean:
```make clean````

Run & Clean launch commands with sudo, because our tomcat os binds on the host
network and needs to be run as root.

When the os has booted, our modified getty prompt the tomcat url.