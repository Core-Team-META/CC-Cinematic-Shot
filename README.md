# CC-Cinematic-Shot

Say cheese!

This component pans a camera from point A to B. Easy to use! Drop into a scene and press 'M' to play/stop the cinematic. For complex cinematics with multiple shots, simply add copies of the template as needed and set their sequence numbers to create a chain.

For impactful story moments, cinematic sequences can be triggered by a gameplay event using Events.BroadcastToPlayer(). If all players should see the sequence use Events.BroadcastToAllPlayers().

Customize shots by positioning Target, CameraStart and CameraEnd. Further customize by adjusting properties on the root of the template. The target can also be set to a dynamic object and the camera will track it.

v1.0
- Fixed a bug where some shots in a complex sequence could be skipped in multiplayer mode.
