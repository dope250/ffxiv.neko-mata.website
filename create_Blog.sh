#!/bin/bash

echo "Enter title for new post:"
read title 
hugo new content "blog/$title.md"
