# README
This is a small doc to help other modders add compatibility with Leighzer's Science Ores.

# Quick Guide
This mod dynamically examines the data.raw.tool table and creates science ores and alternate recipes for that science pack.

The only thing that NEEDS to be supplied to this mod is which color the ore should be so that it matches your science pack.

Just set the data.raw.tool[sciencePackName].leighzerscienceoresOreTintName to a tint name that is in my leighzermods.tints table

This mod examines a science pack's total raw and will auto-generate a (hopefully) appropriate recipe. 

# Customization
Here are a set of optional fields that can be set on the data.raw.tool[sciencePackName] table to override the default dynamic ore creator:
leighzerscienceoresDisabled - Set to true to have the dynamic ore creator skip this science pack entirely. (No ore, recipe, etc. will be added)
leighzerscienceoresCostOverride - Set this amount to override the calculated recipe cost.
leighzerscienceoresOreTintName - Set this to a tint name that is in leighzermods.tints to set the color of the ore.
leighzerscienceoresStartingAreaEnabled - Set this to enable/disable the ore patch being in the starting area.

# Thank You
If you have any questions or issues please open a discussion on the mod portal!