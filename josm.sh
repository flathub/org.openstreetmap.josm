#!/bin/sh

# Java2D and Swing APIs use Xlib and support HiDPI via GDK_SCALE var
# http://hg.openjdk.java.net/jdk9/jdk9/jdk/rev/bc2d1130105f#l27.8
GDK_SCALE=1
is_natural_number='^[0-9]+$'
DPI=`xgetres Xft.dpi`
# if $DPI is a natural number, taken from https://stackoverflow.com/a/806923
if [[ $DPI =~ $is_natural_number ]] ; then
   # float division in bash, taken from https://stackoverflow.com/a/21032001
   SCALE=`echo "$DPI 96" | awk '{printf "%.1f \n", $1/$2}'`
   # Round in bash, taken from https://stackoverflow.com/a/26465573
   GDK_SCALE=$(LC_ALL=C printf "%.0f\n" $SCALE)
fi

export GDK_SCALE

java -jar /app/bin/josm.jar
