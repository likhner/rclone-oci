#!/bin/sh

set -e

mkdir -p ~/.config/rclone/
echo "
[OCI]
type = s3
provider = other
env_auth = false
access_key_id = $ACCESS
secret_access_key = $SECRET
endpoint = $ENDPOINT
" > ~/.config/rclone/rclone.conf

sh -c "rclone $*"
