#!/bin/bash

datetime=$(date +%s)
echo "Enter title for new post:"
read title 
hugo new content "blog/$datetime-$title.md"
