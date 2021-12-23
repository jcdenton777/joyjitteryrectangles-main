/bin/echo -n "Enter input: "
read input

 Input validation
if ! validAlphaNum "$input" ; then
  echo "Your input must consist of only letters and numbers." >&2
  exit 1
else
  echo "Input is valid."
fi
