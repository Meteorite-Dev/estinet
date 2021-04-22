#!/bin/sh

install -m 755 liblic.so /usr/local/estinet/lib/liblic.so
ldconfig

rm -rf /usr/local/estinet/etc/verification
mkdir -p /usr/local/estinet/etc/verification
cp -rf etc/verification/auth /usr/local/estinet/etc/verification/auth
install -m 755 etc/verification/estinet.pem /usr/local/estinet/etc/verification/estinet.pem
install -m 755 etc/verification/engine_hash /usr/local/estinet/etc/verification/engine_hash
