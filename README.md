# plumbing

This module contains utility scripts for voxpupuli admins to
do various management tasks.



# travis secrets

To generate the list of encrypted blobs for puppet forge deployment:

./bin/encrypt_for_travis.sh $forge_password > share/travis_secrets


# gpg

to decrypt:


gpg -d puppet_credentials.asc > puppet_credentials


to encrypt:


gpg -a -e -s $(for human in $(cat recipients.txt); do echo "-r ${human}"; done) puppet_credentials
