curl -fsSL https://code-server.dev/install.sh | sh

# or
curl -fOL https://github.com/cdr/code-server/releases/download/v3.8.0/code-server_3.8.0_amd64.deb
sudo dpkg -i code-server_3.8.0_amd64.deb
sudo systemctl enable --now code-server@$USER
# Now visit http://127.0.0.1:8080. Your password is in ~/.config/code-server/config.yaml
