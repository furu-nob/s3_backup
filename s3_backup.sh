#!/bin/sh

du -hs /home
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /home/ s3://hoge/home/
du -hs /root
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /root/ s3://hoge/root/
du -hs /etc
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /etc/ s3://hoge/etc/
du -hs /usr/local
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /usr/local/ s3://hoge/usr_local/
du -hs /var/trac
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /var/trac/ s3://hoge/var_trac/
du -hs /var/log
s3cmd sync --verbose --recursive --reduced-redundancy /var/log/ s3://hoge/var_log/
du -hs /ebs
s3cmd sync --verbose --recursive --delete-removed --reduced-redundancy /ebs/ s3://hoge/ebs/

