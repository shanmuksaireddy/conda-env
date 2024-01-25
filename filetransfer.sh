#!/usr/bin/env bash


read -p "source folder: " source_folder
read -p "destination folder: " destination_folder


if [ ! -d "$source_folder" ]; then
    echo "Source folder does not exist."
    exit 1
fi


if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

cp -r "$source_folder"/* "$destination_folder"


