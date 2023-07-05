#! /usr/bin/env sh

set -e

echo "starting $0 {"

rm -rf unicornmain_webserver/
git clone https://$MACHINE_USER_TOKEN@github.com/matthandi/unicornmain_webserver.git

cd unicornmain_webserver/
git config user.email "user@machine.com"
git config user.name  "Machine User"

cp ../index.html .
git add --all
git commit -m "$(date) " || true
git push
cd ../

rm -rf unicornmain_webserver/
echo "finished $0 }"
