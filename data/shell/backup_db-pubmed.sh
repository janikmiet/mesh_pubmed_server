#!/bin/bash

# Script takes backup on neuro2.db and /PubMed_daily/latest_folder

# Define base and backup location
base_folder=/home/ubuntu/
backup_folder=/home/ubuntu/backups/

# Check latest folder
pubmed_latest=$(ls -td -- PubMed_daily/* | head -n 1 )
backup_filename=${pubmed_latest//['/']/-}.tar.gz

# Backup files
echo $backup_folder$backup_filename
tar cvzf $backup_folder$backup_filename $pubmed_latest
echo ${backup_folder}neuro2.tar.gz
tar cvzf ${backup_folder}neuro2.tar.gz neuro2.db
