#!/bin/bash


echo "Warning this will swap your forge credentials for the puppet credentails"

if ! grep username ~/.puppetforge.yml | grep puppet >/dev/null; then

    mv ~/.puppetforge.yml ~/.puppetforge.yml.bak
    cp puppet_credentials ~/.puppetforge.yml

fi

