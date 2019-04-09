**Deploy centos 7 vm with nginx on aws and deploy new fancy index.html**

**Dependencies:**
Docker client installed and configured to access local or remote docker daemon.

For `provision.sh`: AWS access key id and secret access key, set up as environment variables
`AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` respectively.

**Usage:**

`./provision.sh` to build ami from centos 7 base ami with nginx installed,
deploy a vm with new security group with open ports 80 and 22,
 new fancy index.html and generated ssh key.
 
 `deploy.sh` to deploy new even better index.html to our nice vm provisioned with the previous script.