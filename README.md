# dotfiles

My personal dotfiles. I don't guarantee they work 100% on your machine, but they should come close.

I'm currently using fish shell and spacemacs, but there is a minimal neovim config too for those times
you use it.

## Usage

First, clone this repo somewhere.

**Bootstrap**

Change to the repo directory before you run this command. It sets up symlinks to your home directory.

```
$ ./bootstrap.sh
```

**Set sane defaults on macOS**

You can modify this script a bunch for your personal preferences.

```
$ ./configure-macos.sh
```

**Install homebrew**

A lot of programs are installed via homebrew.

```
$ ./install-brew.sh
```

**Install asdf-vm**

This is currently the version manager I use for Elixir and Erlang, but it has a lot of plugins.

```
$ ./install-asdf.sh
```

**Install fisherman**

Dead simple package manager for fish shell.

```
$ ./install-fisherman.sh
$ fisher
```

**Install spacemacs**

Best text editor currently available.

```
$ ./install-spacemacs.sh
```

**Install burl**

Nice curl wrapper. Check out the HTTP method fish functions for elegant usage.

```
$ ./install-burl.sh
```

**Configure dinghy and docker-machine**

Really easily manage VMs for Docker on macOS.

Pretty much as simple as `dinghy up` and `docker-env` if you want
to run docker commands.

```
$ ./configure-docker-machine.sh
```

**Install craftman**

Let's you actually work on CraftCMS projects.

```
$ ./install-craftman.sh
```

## Usage

### Installed tools

- `ag` - Searching directories (used by spacemacs to do so)
- `burl` - A better way to make HTTP requests. My fish functions also come with a set of aliases that let you type `GET https://www.google.com` for example
- `dinghy` - Manage docker VMs
- `docker-compose` - It is what it is
- `fish` - A great shell
- `fisherman` - Easy-to-use package management for fish shell
- `gcloud` - Google Cloud Platform CLI bindings
- `hub` - Some convenient git extensions for using GitHub
- `jq` - A JSON parser (pipe JSON to this function)
- `nodenv` - Manage node installations
- `postgresql` - I usually run postgres in a Docker container but it's nice to have psql available locally
- `pyenv` - Manage python installations
- `rbenv` - Manage ruby installations
- `spacemacs` - Best text editor currently available
- `tree` - Pretty tree layout of directories.

### Installed apps

- Alfred: great replacement for native Spotlight
- Emacs: Install the GUI Mac app because it works more effectively (I use spacemacs)
- Firefox
- Flux
- Google Chrome
- iTerm2
- Slack
- Spectacle: best window manager for macOS
