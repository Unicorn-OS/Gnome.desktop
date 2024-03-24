# Problem:
https://askubuntu.com/questions/1367139/apt-get-upgrade-auto-restart-services

# Solution:
## Best:
>As others mentioned, the trouble in this case is with the needrestart command, which is part of the apt-get upgrade process in Ubuntu now (specifically 22.04 which is what I am using). By default this is set to "interactive" mode which causes the interruption of scripts.
>
>To change this behavior, we can edit the /etc/needrestart/needrestart.conf file, changing the line:
>
>#$nrconf{restart} = 'i';
>
>to
>
>$nrconf{restart} = 'a'; (if we want to restart the services automatically) or $nrconf{restart} = 'l'; to simply list the services that need restart.
- https://askubuntu.com/a/1421221

## alt:
>But the environment variable NEEDRESTART_MODE allows to specify a mode. And by choosing "(a)utomatically", you can benefit from needrestart without being blocked by the prompt:
>
>`sudo NEEDRESTART_MODE=a apt-get dist-upgrade --yes`

my:
```
sudo NEEDRESTART_MODE=a apt install ubuntu-desktop-minimal
```
