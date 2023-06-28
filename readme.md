# Gnome.desktop
Display . Fractional Scaling https://www.linuxuprising.com/2019/04/how-to-enable-hidpi-fractional-scaling.html

```
enable_on_Wayland(){
  gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
}

enable_on_X11(){
  gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling']"
}
```
