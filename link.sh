#!/bin/bash


# Script will create symbolic links in the Atom directory

path="$(pwd)"
atom=~/.atom
atomback=~/.atom_back


# check for .atom directory
if [ -d $atom ]; then

  if [ ! -d $atomback ]; then
  echo "Making backup directory ~/.atom_back"
  mkdir $atomback
  sleep 0.5
  fi

  echo "Checking if config.cson exists for Atom:"
  if [ -f $atom/config.cson ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/config.cson $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi

  echo "Checking if init.coffee exists for Atom:"
  if [ -f $atom/init.coffee ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/init.coffee $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi

  echo "Checking if keymap.cson exists for Atom:"
  if [ -f $atom/keymap.cson ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/keymap.cson $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi

  echo "Checking if snippets.cson exists for Atom:"
  if [ -f $atom/snippets.cson ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/snippets.cson $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi

  echo "Checking if styles.less exists for Atom:"
  if [ -f $atom/styles.less ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/styles.less $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi

  echo "checking if style theme exists:"
  if [ -d $atom/packages/TC-gl-dark-syntax2 ]; then
    echo "Yes, moving it to ~/.atom_back"
    mv $atom/packages/TC-gl-dark-syntax2 $atomback
    sleep 0.5
  else
    echo "Does not exist yet"
    sleep 0.5
  fi



  echo -e "\n Making symbolic links..."
  echo "Linking config.cson"
  ln -s $path/config.cson $atom
  sleep 0.5
  echo "Linking init.coffee"
  ln -s $path/init.coffee $atom
  sleep 0.5
  echo "Linking keymap.cson"
  ln -s $path/keymap.cson $atom
  sleep 0.5
  echo "Linking snippets.cson"
  ln -s $path/snippets.cson $atom
  sleep 0.5
  echo "Linking styles.less"
  ln -s $path/styles.less $atom
  sleep 0.5
  echo "Linking styles theme"
  ln -s $path/TC-gl-dark-syntax2 $atom/packages/


else
  echo "Can not find directory $atom !!!"

fi
