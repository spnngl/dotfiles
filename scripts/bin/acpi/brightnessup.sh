#!/bin/bash 

# Set the static increment value.  Keep in mind that this will 
# be done twice. 
IncVal=150

# Get the current brightness value. 
read -r CurrVal < "/sys/class/backlight/intel_backlight/brightness"

# Set the new value minus the decrement value. 
NewVal=$(($CurrVal + $IncVal)); 

# Set the new value directly. 
echo -n $NewVal > /sys/class/backlight/intel_backlight/brightness 

logger "[ACPI] brightnessup |$CurrVal -> $NewVal|"
