# AWS

Look inside ``aws-prep``` to prepare your machine (we use it on a ubuntu vm):
 1- install linuxkit
 2- setup aws

Build:
```make build````
This command will build a raw os image, upload it on S3 and import it as an AMI.

Run:
```make run````
It will create an EC2 micro instance booting your os
