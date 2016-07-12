#!/bin/bash

set -eu

rm puppet_credentials.asc

while read -r recp; do
  echo "--recipient ${recp}"
  recipients="${recipients} --recipient ${recp}"
  gpg --recv-keys "${recp}"
done < recipients.txt

gpg --sign --encrypt --armor "${recipients}" puppet_credentials

