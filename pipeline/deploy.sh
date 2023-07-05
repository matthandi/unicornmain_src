#! /usr/bin/env sh

set -e

echo "starting $0 {"

rm -rf unicornmain_webserver/
git clone https://github.com/matthandi/unicornmain_webserver.git
cd unicornmain_webserver/

cp ../index.html .
git add --all
git commit -m "$(date) "
git push

rm -rf unicornmain_webserver/
echo "finished $0 }"
