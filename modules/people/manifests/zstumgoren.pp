class people::zstumgoren {

  include people::zstumgoren::applications

  $home     = '/Users/$name'
  $code     = '/Users/stumgoren/code'
  $dotfiles = '/Users/stumgoren/code/dotfiles'

  $mydirs = [
    '/Users/stumgoren/code/',
    '/Users/stumgoren/bin/',
  ]

  file { $mydirs:
    ensure => 'directory',
    owner  => $luser,
    group  => 'staff',
    mode   => 755,
  }

  repository {
    '/Users/stumgoren/code/dotfiles/':
    source   => 'zstumgoren/dotfiles',
    provider => 'git';
  }

  file { '/Users/stumgoren/.tmux.conf':
    ensure => 'link',
    target => "${dotfiles}/tmux.conf",
  }

  # bash
  file { '/Users/stumgoren/.bashrc':
    ensure => 'link',
    target => "${dotfiles}/mac/bashrc",
  }

  file { '/Users/stumgoren/.bash_aliases':
    ensure => 'link',
    target => "${dotfiles}/mac/bash_aliases",
  }


  # vim
  file { '/Users/stumgoren/.vimrc.before':
    ensure => 'link',
    target => "${dotfiles}/mac/vimrc.before",
  }

  file { '/Users/stumgoren/.vimrc.after':
    ensure => 'link',
    target => "${dotfiles}/mac/vimrc.after",
  }

  repository {
    '/Users/stumgoren/code/j2/':
    source   => 'rupa/j2',
    provider => 'git';
  }

  file { '/Users/stumgoren/bin/j.sh':
    ensure => 'link',
    target => "${code}/j2/j.sh",
  }

}
