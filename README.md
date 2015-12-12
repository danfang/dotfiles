dotfiles
==
These are my moderately opinionated dotfiles and bootstrapping tools.

## Configurations

### bash
- colorized bash prompt
- git autocompletion
- OSX system, brew, npm, gem updates
- quick attu login
- helpful navigation aliases

#### tmux
- Prefix is set to \` - use \`\` to get a backtick.
- 1-indexed windows
- `Prefix + v` and `Prefix + s` for vertical and horizontal window splitting
- `Prefix + c` to create a new window
- `Prefix + h/j/k/l` to navigate between windows
- `Prefix + H/J/K/L` to resize windows
- Status bar with system load, current user, and current time

#### vim
- Space mapleader
- Syntax highlighting
- Smart case matching
- `:set paste` and `:set nopaste`to preserve formatting when copying from the clipboard

#### git
- Coloring and short aliases

## Bootstraps

The bootstrap files ubuntu.sh and redhat.sh will setup Ubuntu and Redhat machines
for general purpose usage.

Both configurations will create an admin user and put `keys/id_rsa.pub` into 
the newly created admin `.ssh/authorized_keys` file.

- Ubuntu
  - system updates
  - installs: node, redis, postgres, mongo, nginx, pip, tmux, htop, unzip, npm
  - pip installs: psycopg2, sqlalchemy, requests, joe, gunicorn

- Redhat
  - system updates
  - installs: tmux, vim, Development Tools

