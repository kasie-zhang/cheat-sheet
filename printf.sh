#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Format output
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# String
#------------------------------
printf "%s" "kasie"

#------------------------------
# Integer
#------------------------------
printf "%d" 17

#------------------------------
# Floating point
#------------------------------
printf "%f" 3.14

#------------------------------
# Scientific notation
#------------------------------
printf "Scientific notation: %e" 123456.789 # Use %E is ok too

#------------------------------
# Hexidecimal numbers
#------------------------------
printf "Hex:          %x"  255
printf "Hex with 0x:  %#x" 255

#------------------------------
# Octal numbers
------------------------------
printf "Octal:         %o"  255
printf "Octal with 0:  %#o" 255

#------------------------------
# Width and alignment (- align left)
#------------------------------
printf "%-10s %-10s\n" "Column1" "Column2"

#------------------------------
# Dynamic width using * as placeholder
#------------------------------
printf "%*s" $width "Right-aligned"

#------------------------------
# Padding numbers (0005)
#------------------------------
printf "%04d" 5

#------------------------------
# Special escape characters
#------------------------------
printf "\n \t \\ %%"

#------------------------------
# Date and time
#------------------------------
printf "%()T" -1                         # -1 means use current time
printf "%()T" "epoc time"                # e.g. printf "%(%Y)T" "0"
# 2024-09-18 06:40:59
printf "%(%F %T)T\n" -1
# Wed, 18 Sep 2024 06:39:53 +0800
printf "%(%a, %d %b %Y %H:%M:%S %z)T\n" -1
# ISO 8601 Date           %F           2024-09-18
# MM/DD/YY                %D           09/18/24
# Time in 24-hour         %T           21:12:35
# Time in 12-hour         %r           06:50:58 AM
# HH:MM in 24-hour        %R           21:12
# Locale's date           %x           09/18/2024
# Locale's time           %X           06:59:40 AM
# Locale's date and time  %c           Wed 18 Sep 2024 09:45:17 AM CST
# Timezone                %Z           CST
# Timezone offset         %z           +0800
# Year                    %Y           2024
# Year (S)                %y           24
# Month                   %m           09
# Month (L)               %B           September
# Month (S)               %b           Sep
# Day                     %d           18
# week                    %A           Wednesday
# week (S)                %a           Wed
# AM/PM                   %p           AM
# Hour                    %H           23
# Hour                    %I           11
# Minute                  %M           13
# Second                  %S           15

#------------------------------
# Print with color
#------------------------------
printf "\033[1;31mRed Text\033[0m\n"  # Prints red-colored text




#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Examples
#++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#------------------------------
# Print 50 dashed
#------------------------------
printf "%.0s-" {1..50}; echo

#------------------------------
# Print arrays
#------------------------------
arr=("apple" "banana" "cherry")
printf "Item: %s\n" "${arr[@]}"
