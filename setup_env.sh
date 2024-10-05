#!/bin/bash
#after 4.4

for i_script in "$DIST/install_scripts"/*
do
	source "$i_script"
done
