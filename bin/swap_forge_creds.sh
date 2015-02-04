#!/bin/bash


echo "Warning this will swap your forge credentials for the puppet credentails"

if ! cat ~/.puppetforge.yml | grep username | grep puppet >/dev/null; then

    mv ~/.puppetforge.yml ~/.puppetforge.yml.bak
    cp puppet_credentials ~/.puppetforge.yml

fi

