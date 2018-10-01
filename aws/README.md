# AWS

## Setup
Look inside `aws-prep` to prepare your machine (we use it on a ubuntu vm):

  1. install linuxkit
  1. setup aws

## Build
build a raw os image, upload it on S3 and import it as an AMI

```make build```

## Run
It will create an EC2 micro instance booting your os

```make run```

> Be patient, it will take long minutes after the upload to be able to boot the new AMI
