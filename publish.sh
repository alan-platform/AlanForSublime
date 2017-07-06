#!/bin/bash
set -e

NOW=`date +"%Y-%m-%d %T"`

zip -rq sublime.zip Syntaxes
zip -rq sublime.zip comments.tmPreferences
zip -rq sublime.zip indent.tmPreferences

sed "s/VERSION/${CI_BUILD_TAG}/g" fabric-sublime-repository-template.json > fabric-sublime-repository-interm.json
sed "s/DATE/${NOW}/g" fabric-sublime-repository-interm.json > fabric-sublime-repository.json

scp sublime.zip alan@office.m-industries.com:sites/www.m-industries.com/sublime/sublime.zip
scp fabric-sublime-repository.json alan@office.m-industries.com:sites/www.m-industries.com/sublime/fabric-sublime-repository.json
