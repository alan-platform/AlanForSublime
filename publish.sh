#!/bin/bash
set -e

NOW=`date +"%Y-%m-%d %T"`

zip -rq sublime.zip src

sed "s/VERSION/${CI_BUILD_TAG}/g" fabric-sublime-repository-template.json > fabric-sublime-repository-interm.json
sed "s/DATE/${NOW}/g" fabric-sublime-repository-interm.json > fabric-sublime-repository.json

scp sublime.zip corno@pruts.nl:websites/m-industries.com/sublime/sublime.zip
scp fabric-sublime-repository.json corno@pruts.nl:websites/m-industries.com/sublime/fabric-sublime-repository.json
