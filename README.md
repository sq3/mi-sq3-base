# mi-sq3-base

This repository is based on [SkyLime mibe base](https://github.com/skylime/mi-core-base).

## description

The mesh.io base mibe image with default setup of infrastructure services like
Munin node, remote syslog and email relay.

## mdata variables

- `root_authorized_keys`: SSH root user public authorized keys
- `root_ssh_rsa`:         SSH root user private rsa key
- `root_ssh_rsa_pub`:     SSH root user public rsa key (mostly not required)
- `syslog_host`:          syslog server address and port (seperated by colon)
- `mail_smarthost`:       address of remote smtp server
- `mail_auth_user`:       smtp username if authentication is required
- `mail_auth_pass`:       smtp password if authentication is required
- `mail_adminaddr`:       admin email address alias
- `ssh_host_rsa_key`:     SSH daemon private rsa key
- `ssh_host_rsa_key.pub`: SSH daemon public rsa key
- `ssh_host_dsa_key`:     SSH daemon private dsa key
- `ssh_host_dsa_key.pub`: SSH daemon public dsa key
- `munin_master_allow`:   Munin master addresses (seperated by spaces)

## services

- `4949/tcp`: munin node daemon
