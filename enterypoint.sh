cat << EOF > /etc/pritunl.conf
    {
        "mongodb_uri": "$MONGODB_URI",
        "server_key_path": "/var/lib/pritunl/pritunl.key",
        "log_path": "/var/log/pritunl.log",
        "static_cache": true,
        "server_cert_path": "/var/lib/pritunl/pritunl.crt",
        "temp_path": "/tmp/pritunl_%r",
        "bind_addr": "0.0.0.0",
        "debug": true,
        "www_path": "/usr/share/pritunl/www",
        "local_address_interface": "auto"
    }
EOF

exec /usr/bin/pritunl start -c /etc/pritunl.conf