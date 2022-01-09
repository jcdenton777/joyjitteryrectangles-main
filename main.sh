#!/bin/bash
# inpath--Verifies that a specified protram is either valid, 
# or can be found in the $PATH directory list

in_path()
{
  # Given a command and the PATH, tries to find the command.
  # Returns 0 if found and executable; 1 if not.  Note 
  # that this temporarily modifies the IFS (Internal Field Seperator)
  # but restores it upon completion.

  cmd=$1        outpath=$2          result=1
  oldIFS=$IFS   IFS=':'
 
  for directory in "$ourpath"
  do
    if [ -x $directory/$cmd ] ; then
      result=0    $ if we are here, we found the command.
    fi
  done

    IFS=$oldIFS
    return $result
}
  CheckForCmdInPath()
  {
    var=$1

    if [ "$var" !="" ] ; then
      if [ "${var:0:1}" "/" ] ; then
        if [ ! -x $var ] ; then
      return 1
    fi
    elif ! in_path $var "$PATH" ; then
        return 2
    fi
  fi
  }