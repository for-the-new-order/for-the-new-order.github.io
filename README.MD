# For the New Order

Uri: https://fortheneworder.rpg.solutions/

# My notepad

Mount removable media: (e.g. D:)

```bash
sudo mkdir /mnt/d
sudo mount -t drvfs D: /mnt/d
```

To safely unmount

```bash
$ sudo umount /mnt/d
```

Run Jekyll

```bash
bundle install
bundle exec jekyll serve
```

or

```bash
bundle exec jekyll serve
# OR
bundle exec jekyll serve --incremental --safe
```

or (using local configs/gems)

```bash
bundle install --gemfile Gemfile.local
bundle update --gemfile Gemfile.local
bundle exec --gemfile Gemfile.local jekyll s --config _config.yml,_config.local.yml
# or
bundle exec --gemfile Gemfile.local jekyll s --config _config.yml,_config.local.yml -I
```

## Jekyll Install Bug

BUG: An error occurred while installing nokogiri (1.8.2), and Bundler cannot continue. (zlib is missing; necessary for building libxml2)

Fix:

```
sudo apt-get install zlib1g-dev
```

## Install Powershell on Ubuntu

To run the ps1 scripts:

https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7#ubuntu-1804
