#!/bin/bash



echo "Enter the directory path to backup:"
read source_dir


if [ ! -d "$source_dir" ]; then
echo "Directory does not exist!"
exit 1
fi


backup_dir="backup"
mkdir -p "$backup_dir"


timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

dir_name=$(basename "$source_dir")


backup_file="${backup_dir}/${dir_name}*backup*${timestamp}.tar.gz"


tar -czf "$backup_file" "$source_dir"


echo "Backup created successfully!"
echo "File: $backup_file"

