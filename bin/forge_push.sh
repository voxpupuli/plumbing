#!/bin/bash

module_dir=$1

if [ -z "$module_dir" ];then
    echo Please provide the path to a puppet module
    exit 1
fi

cd "$module_dir" || exit

rake module:push

cd - || exit

