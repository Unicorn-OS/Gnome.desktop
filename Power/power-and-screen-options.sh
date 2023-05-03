set_stay_on(){
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 7200

  # Power > Power Saving Options > 
  # Screen Blank
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-timeout 900

  # Automatic Suspend
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
}

set_shutdown_on_battery(){
  # ? on battery:
  gsettings get org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type
  gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type ''
}

set_power_screen_blank_never(){
  gsettings set org.gnome.desktop.session idle-delay uint32 0
}

set_privacy_screen_lock_disable(){
  # Privacy >
  # Automatic Screen Lock
  gsettings set org.gnome.desktop.screensaver lock-enabled false
  
  # Black Screen Delay
  ## = Never
  gsettings set gsettings get org.gnome.desktop.session idle-delay uint32 0
  ## = 15 minutes
  gsettings set gsettings get org.gnome.desktop.session idle-delay uint32 900

  # Lock Screen Notifications
  org.gnome.desktop.notifications show-in-lock-screen false
}

get(){
  gsettings list-recursively | grep -i sleep
}
