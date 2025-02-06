#!/bin/sh

CERT_DIR="/etc/nginx/ssl"
CERT_KEY="$CERT_DIR/self-signed.key"
CERT_CRT="$CERT_DIR/self-signed.crt"

mkdir -p $CERT_DIR

if [ ! -f "$CERT_KEY" ] || [ ! -f "$CERT_CRT" ]; then
    echo "Generating self-signed SSL certificate..."
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout "$CERT_KEY" -out "$CERT_CRT" \
        -subj "/C=US/ST=Local/L=Local/O=Local/CN=localhost"
    echo "Self-signed SSL certificate generated."
else
    echo "SSL certificate already exists, skipping generation."
fi
