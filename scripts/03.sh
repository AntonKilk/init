#!/bin/bash
FILE=$1
sed '/^$/d' $FILE  | tr "[a-z]" "[A-Z]"
