This is my fork of rss2email (http://www.allthingsrss.com/rss2email). It uses
msmtp instead of sendmail and includes a Makefile that makes a lot easier to
initialize and maintain your feeds.

# Usage

Put your all feeds in a plain text file like following;

```
http://www.reddit.com/r/emacs/hot/.rss azer+rss+emacs@kodfabrik.com
http://www.reddit.com/r/comics/hot/.rss azer+rss+humor@kodfabrik.com
http://www.reddit.com/r/worldnews/hot/.rss azer+rss+news@kodfabrik.com
```

E-Mail field can be left blank if a default e-mail is set.

**Tip:** Edit first-line of Makefile to not type the path of feeds file on command-line.

## make reset 

Removes current data (if exists) and initializes r2e from given feeds file.

```bash
$ make reset rss=path/to/feeds
```

Run `make list` to make sure it worked. 

## make run

Start fetching data from feeds and sending e-mails if r2e is initialized.

## make import

Imports feeds from given file to r2e.

```bash
$ make reset rss=path/to/feeds
```

## make new

Initializes r2e and creates all defined e-mail addresses.

```bash
$ make reset rss=path/to/feeds
```

## make emails

Lists the target e-mail addresses found.

## make feeds

Lists the feed URLs found.

## make list

Lists the saved feed URLs.

## make clean

Removes all saved data and cache.

## make edit

Edit the feeds file with VIM.
