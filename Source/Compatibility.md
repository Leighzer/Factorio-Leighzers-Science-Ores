# README
This is a small doc to help other modders add compatibility with Leighzer's Science Ores.

# Quick Guide
This mod examines the data.raw.tool table and creates science ores and alternate recipes for the science packs.

The only thing that NEEDS to be supplied to this mod is the name of the tint color the new ore should use so that it matches your science pack.

Just set the data.raw.tool[sciencePackName].leighzerscienceores.oreTintName to a tint name that is in the leighzermods.tints table

This mod examines a science pack's total raw and will auto-generate a (hopefully) appropriate recipe. 

# Customization
Here are a set of optional fields that can be set on the data.raw.tool[sciencePackName].leighzerscienceores table to override the default dynamic ore creator:
disabled - Set to true to have the dynamic ore creator skip this science pack entirely. (No ore, recipe, etc. will be added)
costOverride - Set this amount to override the calculated recipe cost.
oreTintName - Set this to a tint name that is in leighzermods.tints to set the color of the ore.
startingAreaEnabled - Set this to enable/disable the ore patch being in the starting area.

# Thank You
If you have any questions or issues please open a discussion on the mod portal!