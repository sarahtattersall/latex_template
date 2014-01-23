#!/bin/bash

find . -name "*.tex" -exec aspell --master=en_GB --lang=en --mode=tex check "{}" \;
