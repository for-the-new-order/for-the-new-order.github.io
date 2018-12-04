
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

## Jekyll Install Bug
BUG: An error occurred while installing nokogiri (1.8.2), and Bundler cannot continue. (zlib is missing; necessary for building libxml2)

Fix:

```
sudo apt-get install zlib1g-dev
```