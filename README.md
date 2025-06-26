tmux config
===========

Here's my configuration repository for tmux and it's dependencies ⚙️

> [!WARNING]
>
> This project isn't intended to get updates! Just my personal
> tips/helper scripts to get on it.
>
> ---
>
> Other thing you should known: I've built it using a VoidLinux.
> So, the installation can differ from OS to OS. You can use your OS
> package manager (`pacman`, `apt`, `...`) or the source from this
> repo 😃

## FTree explanation

This repo can be separated into 3 sections ⬇️
1. the `conf` dir which stores the tmux config file and path config;
2. the `tars` dir which stores the source tars;
3. the `unpacked` dir which isn't here, but will be generated during
   the installation.

## The source

All sources were taken from the official repositories/links:
- `tmux`: https://github.com/tmux/tmux
- `libevent`: https://libevent.org/
- `ncurses`: https://invisible-island.net/ncurses/ncurses.html

> [!NOTE]
>
> All sources are latest version so far. _(28, May - 2025)_

## Extra dependencies

As I've said, this is a guide to install from source code, so... some
dependencies are required:
- openssl-devel
- bison
- xclip _(I've set `xclip` as default copy tool (in vi mode). You can
  edit it within `conf/tmux.conf`)_

You can use your package manager.

## Building

I've added a simple install script for each source tarball. They're
at `tars` directory 🤓 ☝️

You don't need to extract the files! The script will do everything
for you! Just do:

```sh
chmode +x ./install-<SOURCE_NAME>.sh # turn into executable
./install-<SOURCE_NAME>.sh
```

> [!TIP]
>
> For this step, I highly recommend to follow this steps:
> 1. libevent
> 2. ncurses
> 3. tmux

After all, you'll have tmux installed in your machine.
_(BUT YOU'LL NEED TO ADD IT TO YOUR GLOBAL PATH)_

## Add to path

To add the built tmux to your global path, you'll need to change the
`.bashrc` file at your `$HOME`! _(valid only for `bash`. Different
approach for other shells)_

All the `.bashrc` content is located at `conf/.bashrc`. All you need
to do is copy+paste to target file. You can do it by running:

```sh
cat ./conf/.bashrc >> $HOME/.bashrc
```

> [!TIP]
>
> The following section is optional 😉

## Add configs

To clone my tmux configs, you'll need to copy+paste the content from
`conf/tmux.conf` to your `.config` path:

1. Ensure that you already have a `tmux config` path:
```sh
mkdir -p $HOME/.config/tmux
```
2. Copy the config to your `config path`:
```sh
cp conf/tmux.conf $HOME/.config/tmux/
```
3. Toggle on the config file (outside a tmux session):
```sh
tmux source $HOME/.config/tmux/tmux.conf
```
