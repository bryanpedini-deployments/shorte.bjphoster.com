#!/usr/bin/env bash

set -e

echo "Setting YOURLS Cookie Key (getting random key from YOURLS APIs) ..."
sed -i "s/^YOURLS_COOKIEKEY/$(curl -fsL http://yourls.org/cookie)/" config/config.php
echo "Done ..."
