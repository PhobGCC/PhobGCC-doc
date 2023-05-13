# ESS Adapter Guide

This is a guide for enabling ESS Adapter functionality for the PhobGCC.

# Prerequisites

As with all Extras, it must be built into the firmware and enabled by first
following the [Extras Guide](../../For_Users/Extras_Guides/Phob_Extras_Guide.md).

# Overview

In Ocarina of Time for the WiiVC, the default mapping for the control
stick is notoriously tragic. This is an Extra that utilizes the control
stick mapping LUT (Lookup Table) from [Skuzee's ESS Adatper](https://github.com/Skuzee/ESS-Adapter)
to provide a more natual control stick mapping that closely resembles what it
would feel like playing on a Nintendo 64.

# Toggling and Configuring

### Toggling 
When enabled, the control stick will have the LUT applied. __This will look weird in smashscope__, 
but this is how it's supposed to look as these control stick values map to a more natural
experience when playing Ocarina of Time on WiiVC. 

When disabled, the PhobGCC will not apply the LUT and mapping will not be affected.

### Configuring
As of now, there are no configuration options as the mapping is a fixed LUT.

# Troubleshooting

If you have any issues enabling this Extra, please refer to the PhobGCC Discord's tech support.
[PhobGCC Discord](https://discord.gg/yrpUu7mgzm)
