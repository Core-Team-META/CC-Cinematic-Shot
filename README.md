<div align="center">

# CC-Cinematic-Shot

A component that pans a camera from point A to B. Easy to use!

[![Build Status](https://github.com/Core-Team-META/CC-Cinematic-Shot/workflows/CI/badge.svg)](https://github.com/Core-Team-META/CC-Cinematic-Shot/actions/workflows/ci.yml?query=workflow%3ACI%29)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/Core-Team-META/CC-Cinematic-Shot?style=plastic)

![TitleCard](/Screenshots/TitleCard.png)

</div>

## Overview

Say cheese!

This component pans a camera from point A to B. Easy to use! Drop into a scene and press 'M' to play/stop the cinematic. For complex cinematics with multiple shots, simply add copies of the template as needed and set their sequence numbers to create a chain.

For impactful story moments, cinematic sequences can be triggered by a gameplay event using `Events.BroadcastToPlayer()`. If all players should see the sequence use Events with `BroadcastToAllPlayers()`.

Customize shots by positioning Target, CameraStart and CameraEnd. Further customize by adjusting properties on the root of the template. The target can also be set to a dynamic object and the camera will track it.
