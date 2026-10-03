# Sudoless Docker enabled by default as per MY_BUILD.md
mkdir -p /var/lib/omarchy/provisioning
echo "docker" >> /var/lib/omarchy/provisioning/groups

if getent group docker >/dev/null 2>&1 && id -u "$USER" >/dev/null 2>&1; then
  usermod -aG docker "$USER" 2>/dev/null || true
fi
