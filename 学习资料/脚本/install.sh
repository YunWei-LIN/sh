#!/bin/bash
cd /root/nginx-*
./configure --without-http_rewrite_module &>/dev/null
make &>/dev/null
make install
