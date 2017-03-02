Features
============
* Enhanced Git prompt options
    * Dirty state
    * Number of commits behind/ahead
    * Color hints
    * Etc
* Personalize prompt to your liking
    * Modify title
    * Include/exclude user & hostname
    * Change color to your liking


Installation
============
In bash
------------------------------
```sh
cd ~
git clone https://stash.globalrelay.net/scm/~jacky.li_globalrelay.net/git-prompt.git .git-prompt
```

Add this line to the bottom of `~/.bashrc`:

```
source ~/.git-prompt/prompt.sh
```

You can use VIM or a text editor of your choice, or install nano

For Windows users, Git Bash’s .bashrc can be found in:

`%USERPROFILE%/.bashrc`

How to install nano on Windows
------------------------------

1. Install Chocolatey by following these instructions
    https://chocolatey.org/install

2. Install nano by running `cinst nano` in cmd or Git Bash

Configuring prompt options
============
1. Make a copy of `settings.default` and rename to `settings`
2. Modify settings as you see fit
3. Reopen Git Bash

If you feel the prompt is slow, try turning off some Git prompt features by commenting out options

For more information on what each git-prompt option does, you can refer to https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh