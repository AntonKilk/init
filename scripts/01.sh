#!/bin/bash
cat /etc/passwd | cut -d: -f1,3,7 | tr ':' '\t' | column -t
