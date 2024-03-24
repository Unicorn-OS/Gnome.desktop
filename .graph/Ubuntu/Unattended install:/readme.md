# Problem:
https://askubuntu.com/questions/1367139/apt-get-upgrade-auto-restart-services

# Solution:
>But the environment variable NEEDRESTART_MODE allows to specify a mode. And by choosing "(a)utomatically", you can benefit from needrestart without being blocked by the prompt:
>
>`sudo NEEDRESTART_MODE=a apt-get dist-upgrade --yes`

my:
```
sudo NEEDRESTART_MODE=a apt install ubuntu-desktop-minimal
```
