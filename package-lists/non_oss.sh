#!/bin/sh

for i in i586 x86_64;
do
  diff kde-cd.$i.list kde-cd-non_oss.$i.list  | grep "^>" | cut -d" " -f2
  diff gnome-cd.$i.list gnome-cd-non_oss.$i.list  | grep "^>" | cut -d" " -f2
done | LANG=C sort -u > non_oss.list
