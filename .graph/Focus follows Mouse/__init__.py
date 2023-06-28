"""
gsettings list-recursively | grep -i "raise"
  org.gnome.desktop.wm.preferences auto-raise true
  org.gnome.desktop.wm.preferences auto-raise-delay 500

gsettings list-recursively | grep -i "focus"
  org.gnome.desktop.wm.preferences focus-mode 'sloppy'
"""

def set(setting):
  cmd = f"gsettings set {setting}"

def focusFollowsMouse():
  set = "org.gnome.desktop.wm.preferences focus-mode 'sloppy'"

def raiseDelay():
  set = "org.gnome.desktop.wm.preferences auto-raise-delay 0"
