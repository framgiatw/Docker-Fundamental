# Homework 1
1. Delete all stopped containers

```
alias dkstop="docker rm $(docker ps -q --filter "status=exited")""
```

2. Delete docker images that have no tag

```
alias dkrmimage="docker rmi $(docker images -f dangling=true -q)"
```

3. Stop all running containers

```
alias dkstop="docker stop $(docker ps -q)"
```

# Homework 2
```
pstree
```

systemd─┬─ModemManager─┬─{gdbus}
        │              └─{gmain}
        ├─NetworkManager─┬─dhclient
        │                ├─dnsmasq
        │                ├─{gdbus}
        │                └─{gmain}
        ├─accounts-daemon─┬─{gdbus}
        │                 └─{gmain}
        ├─acpid
        ├─agetty
        ├─avahi-daemon───avahi-daemon
        ├─colord─┬─{gdbus}
        │        └─{gmain}
        ├─cron
        ├─cups-browsed─┬─{gdbus}
        │              └─{gmain}
        ├─cupsd───2*[dbus]
        ├─dbus-daemon
        ├─dockerd─┬─docker-containe─┬─docker-containe─┬─entrypoint.sh─┬─mysqld_safe───mysqld───27*[{mysqld}]
        │         │                 │                 │               └─python───python───{python}
        │         │                 │                 └─9*[{docker-containe}]
        │         │                 └─10*[{docker-containe}]
        │         └─84*[{dockerd}]
        ├─fwupd─┬─3*[{GUsbEventThread}]
        │       ├─{fwupd}
        │       ├─{gdbus}
        │       └─{gmain}
        ├─gnome-keyring-d─┬─{gdbus}
        │                 ├─{gmain}
        │                 └─{timer}
        ├─irqbalance
        ├─lightdm─┬─Xorg
        │         ├─lightdm─┬─upstart─┬─at-spi-bus-laun─┬─dbus-daemon
        │         │         │         │                 ├─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─at-spi2-registr─┬─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─bamfdaemon─┬─{dconf worker}
        │         │         │         │            ├─{gdbus}
        │         │         │         │            └─{gmain}
        │         │         │         ├─chrome─┬─2*[cat]
        │         │         │         │        ├─chrome─┬─chrome─┬─4*[chrome─┬─{Chrome_ChildIOT}]
        │         │         │         │        │        │        │           ├─3*[{CompositorTileW}]]
        │         │         │         │        │        │        │           ├─{Compositor}]
        │         │         │         │        │        │        │           ├─{GpuMemoryThread}]
        │         │         │         │        │        │        │           ├─{MemoryInfra}]
        │         │         │         │        │        │        │           ├─{Renderer::FILE}]
        │         │         │         │        │        │        │           ├─{TaskSchedulerRe}]
        │         │         │         │        │        │        │           └─{TaskSchedulerSe}]
        │         │         │         │        │        │        ├─11*[chrome─┬─{Chrome_ChildIOT}]
        │         │         │         │        │        │        │            ├─3*[{CompositorTileW}]]
        │         │         │         │        │        │        │            ├─{Compositor}]
        │         │         │         │        │        │        │            ├─{GpuMemoryThread}]
        │         │         │         │        │        │        │            ├─{MemoryInfra}]
        │         │         │         │        │        │        │            ├─{Renderer::FILE}]
        │         │         │         │        │        │        │            ├─{ScriptStreamerT}]
        │         │         │         │        │        │        │            ├─{TaskSchedulerRe}]
        │         │         │         │        │        │        │            └─{TaskSchedulerSe}]
        │         │         │         │        │        │        ├─chrome─┬─{Chrome_ChildIOT}
        │         │         │         │        │        │        │        ├─3*[{CompositorTileW}]
        │         │         │         │        │        │        │        ├─{Compositor}
        │         │         │         │        │        │        │        ├─{GpuMemoryThread}
        │         │         │         │        │        │        │        ├─{MemoryInfra}
        │         │         │         │        │        │        │        ├─{Renderer::FILE}
        │         │         │         │        │        │        │        ├─{ScriptStreamerT}
        │         │         │         │        │        │        │        ├─4*[{TaskSchedulerRe}]
        │         │         │         │        │        │        │        └─{TaskSchedulerSe}
        │         │         │         │        │        │        ├─chrome─┬─{Chrome_ChildIOT}
        │         │         │         │        │        │        │        ├─3*[{CompositorTileW}]
        │         │         │         │        │        │        │        ├─{Compositor}
        │         │         │         │        │        │        │        ├─{GpuMemoryThread}
        │         │         │         │        │        │        │        ├─{Media}
        │         │         │         │        │        │        │        ├─{MemoryInfra}
        │         │         │         │        │        │        │        ├─{Renderer::FILE}
        │         │         │         │        │        │        │        ├─{ScriptStreamerT}
        │         │         │         │        │        │        │        ├─4*[{TaskSchedulerRe}]
        │         │         │         │        │        │        │        └─{TaskSchedulerSe}
        │         │         │         │        │        │        └─chrome─┬─{Chrome_ChildIOT}
        │         │         │         │        │        │                 ├─3*[{CompositorTileW}]
        │         │         │         │        │        │                 ├─{Compositor}
        │         │         │         │        │        │                 ├─{GpuMemoryThread}
        │         │         │         │        │        │                 ├─{Renderer::FILE}
        │         │         │         │        │        │                 ├─{ScriptStreamerT}
        │         │         │         │        │        │                 ├─{TaskSchedulerRe}
        │         │         │         │        │        │                 └─{TaskSchedulerSe}
        │         │         │         │        │        └─nacl_helper
        │         │         │         │        ├─chrome─┬─chrome
        │         │         │         │        │        ├─{Chrome_ChildIOT}
        │         │         │         │        │        ├─{MemoryInfra}
        │         │         │         │        │        ├─{TaskSchedulerSe}
        │         │         │         │        │        └─{Watchdog}
        │         │         │         │        ├─{AudioThread}
        │         │         │         │        ├─{BrowserWatchdog}
        │         │         │         │        ├─{Chrome_CacheThr}
        │         │         │         │        ├─{Chrome_DBThread}
        │         │         │         │        ├─{Chrome_FileThre}
        │         │         │         │        ├─{Chrome_FileUser}
        │         │         │         │        ├─{Chrome_HistoryT}
        │         │         │         │        ├─{Chrome_IOThread}
        │         │         │         │        ├─{Chrome_ProcessL}
        │         │         │         │        ├─{Chrome_SyncThre}
        │         │         │         │        ├─{CompositorTileW}
        │         │         │         │        ├─{CrShutdownDetec}
        │         │         │         │        ├─{D-Bus thread}
        │         │         │         │        ├─{Geolocation}
        │         │         │         │        ├─{IndexedDB}
        │         │         │         │        ├─{LevelDBEnv}
        │         │         │         │        ├─{MemoryInfra}
        │         │         │         │        ├─{NetworkChangeNo}
        │         │         │         │        ├─2*[{TaskSchedulerBa}]
        │         │         │         │        ├─5*[{TaskSchedulerFo}]
        │         │         │         │        ├─{TaskSchedulerSe}
        │         │         │         │        ├─{WorkerPool/4243}
        │         │         │         │        ├─{WorkerPool/4521}
        │         │         │         │        ├─{WorkerPool/4523}
        │         │         │         │        ├─{WorkerPool/6464}
        │         │         │         │        ├─{WorkerPool/6465}
        │         │         │         │        ├─{WorkerPool/6468}
        │         │         │         │        ├─{chrome}
        │         │         │         │        ├─{dconf worker}
        │         │         │         │        ├─{extension_crash}
        │         │         │         │        ├─{gdbus}
        │         │         │         │        ├─{gmain}
        │         │         │         │        ├─{gpu-process_cra}
        │         │         │         │        ├─{inotify_reader}
        │         │         │         │        ├─{renderer_crash_}
        │         │         │         │        ├─{sandbox_ipc_thr}
        │         │         │         │        └─{threaded-ml}
        │         │         │         ├─compiz─┬─{dconf worker}
        │         │         │         │        ├─{gdbus}
        │         │         │         │        ├─{gmain}
        │         │         │         │        └─4*[{pool}]
        │         │         │         ├─dbus-daemon
        │         │         │         ├─dconf-service─┬─{gdbus}
        │         │         │         │               └─{gmain}
        │         │         │         ├─evolution-addre─┬─evolution-addre─┬─{dconf worker}
        │         │         │         │                 │                 ├─{evolution-addre}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─{dconf worker}
        │         │         │         │                 ├─{evolution-addre}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─evolution-calen─┬─evolution-calen─┬─{dconf worker}
        │         │         │         │                 │                 ├─2*[{evolution-calen}]
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 ├─{gmain}
        │         │         │         │                 │                 └─{pool}
        │         │         │         │                 ├─evolution-calen─┬─{dconf worker}
        │         │         │         │                 │                 ├─{evolution-calen}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─{dconf worker}
        │         │         │         │                 ├─{evolution-calen}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─evolution-sourc─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gconfd-2
        │         │         │         ├─gnome-session-b─┬─deja-dup-monito─┬─{dconf worker}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─gnome-software─┬─{dconf worker}
        │         │         │         │                 │                ├─{gdbus}
        │         │         │         │                 │                └─{gmain}
        │         │         │         │                 ├─indicator-appli─┬─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─nautilus─┬─{dconf worker}
        │         │         │         │                 │          ├─{gdbus}
        │         │         │         │                 │          └─{gmain}
        │         │         │         │                 ├─nm-applet─┬─{dconf worker}
        │         │         │         │                 │           ├─{gdbus}
        │         │         │         │                 │           └─{gmain}
        │         │         │         │                 ├─polkit-gnome-au─┬─{dconf worker}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─unity-fallback-─┬─{dconf worker}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─update-notifier─┬─{dconf worker}
        │         │         │         │                 │                 ├─{gdbus}
        │         │         │         │                 │                 └─{gmain}
        │         │         │         │                 ├─zeitgeist-datah─┬─{gdbus}
        │         │         │         │                 │                 ├─{gmain}
        │         │         │         │                 │                 └─4*[{pool}]
        │         │         │         │                 ├─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gnome-terminal-─┬─zsh───sudo───docker───8*[{docker}]
        │         │         │         │                 ├─zsh───pstree
        │         │         │         │                 ├─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─goa-daemon─┬─{dconf worker}
        │         │         │         │            ├─{gdbus}
        │         │         │         │            ├─{gmain}
        │         │         │         │            └─{goa-daemon}
        │         │         │         ├─goa-identity-se─┬─{gdbus}
        │         │         │         │                 ├─{gmain}
        │         │         │         │                 └─{pool}
        │         │         │         ├─gpg-agent
        │         │         │         ├─gvfs-afc-volume─┬─{gdbus}
        │         │         │         │                 ├─{gmain}
        │         │         │         │                 └─{gvfs-afc-volume}
        │         │         │         ├─gvfs-goa-volume─┬─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gvfs-gphoto2-vo─┬─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gvfs-mtp-volume─┬─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gvfs-udisks2-vo─┬─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─gvfsd─┬─{gdbus}
        │         │         │         │       └─{gmain}
        │         │         │         ├─gvfsd-fuse─┬─{gdbus}
        │         │         │         │            ├─{gmain}
        │         │         │         │            ├─{gvfs-fuse-sub}
        │         │         │         │            └─2*[{gvfsd-fuse}]
        │         │         │         ├─gvfsd-metadata─┬─{gdbus}
        │         │         │         │                └─{gmain}
        │         │         │         ├─gvfsd-trash─┬─{gdbus}
        │         │         │         │             └─{gmain}
        │         │         │         ├─hud-service─┬─{dconf worker}
        │         │         │         │             ├─{gdbus}
        │         │         │         │             └─{gmain}
        │         │         │         ├─ibus-daemon─┬─ibus-dconf─┬─{dconf worker}
        │         │         │         │             │            ├─{gdbus}
        │         │         │         │             │            └─{gmain}
        │         │         │         │             ├─ibus-engine-sim─┬─{gdbus}
        │         │         │         │             │                 └─{gmain}
        │         │         │         │             ├─ibus-engine-uni─┬─{gdbus}
        │         │         │         │             │                 ├─{gmain}
        │         │         │         │             │                 └─{ibus-engine-uni}
        │         │         │         │             ├─ibus-ui-gtk3─┬─{dconf worker}
        │         │         │         │             │              ├─{gdbus}
        │         │         │         │             │              └─{gmain}
        │         │         │         │             ├─{gdbus}
        │         │         │         │             └─{gmain}
        │         │         │         ├─ibus-x11─┬─{dconf worker}
        │         │         │         │          ├─{gdbus}
        │         │         │         │          └─{gmain}
        │         │         │         ├─indicator-bluet─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─indicator-datet─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 ├─{gmain}
        │         │         │         │                 ├─{indicator-datet}
        │         │         │         │                 └─{pool}
        │         │         │         ├─indicator-keybo─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─indicator-messa─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─indicator-power─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─indicator-print─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─indicator-sessi─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─pulseaudio─┬─{alsa-sink-ALC88}
        │         │         │         │            ├─{alsa-sink-HDMI }
        │         │         │         │            └─{alsa-source-ALC}
        │         │         │         ├─sh───zeitgeist-daemo─┬─{gdbus}
        │         │         │         │                      └─{gmain}
        │         │         │         ├─unity-panel-ser─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─unity-settings-─┬─{dconf worker}
        │         │         │         │                 ├─{gdbus}
        │         │         │         │                 └─{gmain}
        │         │         │         ├─2*[upstart-dbus-br]
        │         │         │         ├─upstart-file-br
        │         │         │         ├─upstart-udev-br
        │         │         │         ├─window-stack-br
        │         │         │         └─zeitgeist-fts─┬─{gdbus}
        │         │         │                         └─{gmain}
        │         │         ├─{gdbus}
        │         │         └─{gmain}
        │         ├─{gdbus}
        │         └─{gmain}
        ├─lwsmd─┬─3*[lwsmd───21*[{lwsmd}]]
        │       ├─2*[lwsmd───22*[{lwsmd}]]
        │       ├─lwsmd───42*[{lwsmd}]
        │       └─21*[{lwsmd}]
        ├─mysqld───27*[{mysqld}]
        ├─polkitd─┬─{gdbus}
        │         └─{gmain}
        ├─redis-server───2*[{redis-server}]
        ├─rsyslogd─┬─{in:imklog}
        │          ├─{in:imuxsock}
        │          └─{rs:main Q:Reg}
        ├─rtkit-daemon───2*[{rtkit-daemon}]
        ├─snapd───8*[{snapd}]
        ├─sshd
        ├─systemd───(sd-pam)
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-timesyn───{sd-resolve}
        ├─systemd-udevd
        ├─thermald───{thermald}
        ├─udisksd─┬─{cleanup}
        │         ├─{gdbus}
        │         ├─{gmain}
        │         └─{probing-thread}
        ├─upowerd─┬─{gdbus}
        │         └─{gmain}
        └─whoopsie─┬─{gdbus}
                   └─{gmain}

- Sử dụng pstree, chúng ta thấy có 2 process mysql.

+ Một tiến trình bên trong docker
```
        ├─dbus-daemon
        ├─dockerd─┬─docker-containe─┬─docker-containe─┬─entrypoint.sh─┬─mysqld_safe───mysqld───27*[{mysqld}]
        │         │                 │                 │               └─python───python───{python}
        │         │                 │                 └─9*[{docker-containe}]
        │         │                 └─10*[{docker-containe}]
        │         └─84*[{dockerd}]
```

+ Một tiến trình trên máy local
```
        ├─mysqld───27*[{mysqld}]
```

# Homework 3

[GitHub](https://github.com/vigov5/framgiatw_flask_demo/pull/2/files)

# Homework 4

[Github](https://github.com/vigov5/framgiatw_flask_demo/pull/1/files)
