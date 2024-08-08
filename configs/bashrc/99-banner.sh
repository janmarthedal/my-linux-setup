if [[ $- == *i* ]]
then
  echo "User         `whoami`@`uname -n`"
  command -v lsb_release >/dev/null 2>&1 && echo "Distribution `lsb_release -ds`"
  echo "Kernel       `uname -r`"
  echo "Time         `date --rfc-3339=seconds`"
fi

