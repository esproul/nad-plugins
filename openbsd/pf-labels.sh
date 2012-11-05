#!/bin/ksh
#
# Massages pfctl labels output to provide the following metrics per label:
#   evals pkts octets inpkts inoctets outpkts outoctets states

IFS="
"
LABELS=$(pfctl -v -s labels)

for line in $LABELS; do
  IFS=" "
  set -A values $line
  echo "${values[0]}:evals L ${values[1]}"
  echo "${values[0]}:pkts L ${values[2]}"
  echo "${values[0]}:octets L ${values[3]}"
  echo "${values[0]}:inpkts L ${values[4]}"
  echo "${values[0]}:inoctets L ${values[5]}"
  echo "${values[0]}:outpkts L ${values[6]}"
  echo "${values[0]}:outoctets L ${values[7]}"
  echo "${values[0]}:states L ${values[8]}"
  IFS="
"
done
