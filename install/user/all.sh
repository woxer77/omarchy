run_logged "$OMARCHY_INSTALL/user/theme.sh"
run_logged "$OMARCHY_INSTALL/user/git.sh"

run_logged "$OMARCHY_INSTALL/user/hardware/dell/xps13-text-scaling.sh"
run_logged "$OMARCHY_INSTALL/user/hardware/fix-nouveau-cursor.sh"

# Default agent set to Antigravity CLI (agy)
mkdir -p "$HOME/.config/omarchy/defaults"
printf '%s\n' "agy" > "$HOME/.config/omarchy/defaults/agent"
