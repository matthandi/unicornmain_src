#! /usr/bin/env sh
set -e

echo "hallo"

cd gibtsnicht || true

cd gg || echo "ging nicht" && echo "ging"

if cd gg ; then
    echo ging
else
    echo ging nicht
fi

# all other than 0 -> error
exit 256


echo "gehtdoch"