---
title: Godot Workshop - Dodge the Creeps
author: semickolon
---

Why Godot?
---

- FOSS
- MIT license
- It has an arguably better 2D dev experience than Unity
- Its growth (and other FOSS game engines) is for the betterment of the industry

<!-- pause -->

Why not Godot?
---

- 3D performance is not the best... yet (though it can do 3D really well already)
- It doesn't fit your game's requirements. You need more control and Godot doesn't let you have it (e.g., rendering pipelines)
- It lacks tools or features your game needs that need to be implemented at the engine level (e.g., true multipass shaders)
- You don't like the workflow or the way it does things

The truth is... there's no such thing as a perfect game engine. It will always depend on your game.

<!-- end_slide -->

🤖 The Godot Way 🤖
---

- Nodes as game objects -- it's like Legos but for making games
<!-- pause -->
- There are many built-in nodes for common use cases
<!-- pause -->
- Nodes are very composable, allowing you to add behavior or functionality to something
<!-- pause -->
- Scenes are a collection of nodes, and they too are composable
<!-- pause -->
- Resources as savable/loadable collections of data
<!-- pause -->
- Signals to communicate "upward"
