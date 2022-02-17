#!/bin/bash

if [[ -f $1 ]]; then
  vim $1
else
  #change the template file path to where you have your template saved
  install -m 755 /home/username/alias_scripts/vim_script/template.txt $1;
  #you can get rid of the "-c ':set nocursorline'" portion. I have the cursorline set in my vimrc.
  vim -c ':set nocursorline' $1 +3;
fi
