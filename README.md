# Dotfiles

The dofiles setup is based on this approach on the [Bare Git Repository](https://www.atlassian.com/git/tutorials/dotfiles) approach 

- Clone repository with the dotfile configuration
```bash
git clone --bare [https://gitlab.com/philippe.lammerts/dotfiles](https://github.com/plammerts/Dotfiles.git) $HOME/.cfg   
```

- Define the alias (`config`) in the current shell scope:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

- Apply the configuration:

```bash
config checkout
```

If any of the config files already exist, you will get this warning:

```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

You may need to remove them, or move them to a different place in case of wanting to preserve them.
