#!/bin/bash

# Docker build environment has limited permissions and
# doesn't support kernel-level operations like altering iptables.
# So commands go in here that need to be executed at runtime

# Enable UFW and configure rules
ufw enable
ufw allow ssh

echo "UFW is configured and active. Starting a shell to keep the container running."

# Start an interactive shell to keep the container alive
exec bash
