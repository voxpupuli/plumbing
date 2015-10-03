# plumbing

This module contains utility scripts for puppet-community admins to
do various management tasks.



# travis secrets

To generate the list of encrypted blobs for puppet forge deployment:

./bin/encrypt_for_travis.sh $forge_password > share/travis_secrets
arsta
