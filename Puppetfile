# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
#github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice404/puppetlabs-inifile"
#github "nginx",      "1.4.0"
#github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
#github "chrome",     "28.0.1500.71"
github "cyberduck",   "1.0.0"
github "dropbox",     "1.1.1"
github "iterm2",      "1.0.2"
#github "googledrive"
#github "java"
github "mongodb",      "1.0.4"
github "mysql",	       "1.1.3"
#github "pgadmin3",    "0.0.3"
github "postgresql",   "1.0.4"
github "powerline",    "1.0.0", :repo => "jfelchner/puppet-powerline"
github "python",       "1.2.1"
#github "sourcetree",  "1.6.2.2"
#github "skype"
github "sysctl",      "1.0.0"
github "tmux",        "1.0.2"
github "virtualbox",  "1.0.4"
#github "vagrant",     "1.2.3"
#github "vim"
github "wget",        "1.0.0"			
github "xquartz",     "1.1.0"
#github "zsh"
