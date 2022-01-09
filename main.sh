#!/bin/bash
<<<<<<< HEAD
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
=======
# validAlphaNum--Ensures that input consists only of alphabetical
#   and numeric characters.
validAlphaNum()
{
  # Validate arg: returns 0 if all upper+lower+digits, 1 otherwise.
  # Remove all unacceptable chars.
  validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

  if [ "$validchars" = "$1" ] ; then
    return 0
  else
    return 1
  fi
}

# BEGIN MAIN SCRIPT--DELETE OR COMMENT OUT EVERYTHING BELOW THIS LINE IF
#   YOU WANT TO INCLUDE THIS IN OTHER SCRIPTS.
# =================
/bin/echo -n "Enter input: "
read input

# Input validation
if ! validAlphaNum "$input" ; then
  echo "Your input must consist of only letters and numbers." >&2
  exit 1
else
  echo "Input is valid."
fi
>>>>>>> origin/main
