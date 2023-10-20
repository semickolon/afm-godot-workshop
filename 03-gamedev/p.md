---
title: Godot Workshop - Intro to Game Architecture
author: semickolon
---

How are games built differently?
---
- Apps only render on certain conditions. Games always render. Every frame. No questions asked.
- Games make use of the GPU. Most apps don't (directly).
- Games are just a different beast (that can be tamed).

<!-- end_slide -->

The game loop
---
1. Input - get player input, react to it
1. Process - get time since last frame (delta), react to it
1. Render - draw!! ✨✨✨

We need a game engine to greatly simplify this whole process. All game engines follow this loop.

<!-- end_slide -->

`delta` - the time since last frame
---
Life would be a whole lot simpler if all games ran at a consistent speed, but of course, the reality we live in is grim and dark.

That's why we need `delta`.
- Computers bow down to physics = They get slow and they "log"
- Monitors have different refresh rates = You get jealous of your 144Hz friends

I'll show you how to use `delta` by implementing a consistent car speed regardless of frame rate.

Note: Not all the time we have to consider `delta`, but knowing when to do so makes you 😎

<!-- end_slide -->

Modelling game objects and behaviors
---
# Trees

- Root
- - Player
- - - Sprite
- - - Hitbox
- - Opponent
- - - Sprite
- - - Hitbox

## Components (Unity)

Each game object can have many components

## Nodes (Godot)

Game objects can only have one script but follow the principle of composition

<!-- pause -->

# ECS (entity component system)

Trees can be inefficient. ECS is for when performance and parallelization are a must!
