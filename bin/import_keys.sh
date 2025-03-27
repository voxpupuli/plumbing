#!/bin/bash

while IFS= read -r key
do
  gpg --recv-keys "$key"
done < <(grep ^0 recipients.txt | awk '{print $1}')
