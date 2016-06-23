#!/bin/bash

set -eu

rm puppet_credentials.asc

recipients=""
for recp in `cat recipients.txt`
do
    echo "--recipient ${recp}"
    recipients="${recipients} --recipient ${recp}"
    gpg --recv-keys ${recp}
done

gpg --sign --encrypt --armor $recipients puppet_credentials

