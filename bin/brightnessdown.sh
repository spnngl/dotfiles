#!/bin/bash 

# Set the static decrement value.  Keep in mind that this will 
# be done twice. 
DecVal=150

read -r CurrVal < "/sys/class/backlight/intel_backlight/brightness"

# Set the new value minus the decrement value. 
NewVal=$(($CurrVal - $DecVal)); 

# Set the new value directly. 
echo -n $NewVal > /sys/class/backlight/intel_backlight/brightness 

logger "[ACPI] brightnessdown |$CurrVal -> $NewVal|"
