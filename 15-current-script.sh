#!/bin/bash

COURSE="Devops from current script"
echo "Before calling other script, course: $COURSE"
echo "process iD of current script : $$"

./16-other-script.sh

echo "After calling other script, course: $COURSE"