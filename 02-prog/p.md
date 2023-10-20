---
title: Godot Workshop - Intro to GDScript
author: semickolon
---

# Let's form groups!
Group yourselves into 2-4:
- At least one with coding experience
- At least one without coding experience

<!-- end_slide -->

About GDScript
---

- Dynamically (and optionally statically) typed programming language made specifically for Godot
- - This is usually known as gradual typing
- It looks a lot like Python 🐍
- It has classes, functions, and other cool stuff.
- It's high-level and very quick to prototype with.

```
func _ready():
    print("Hello world!")
```

<!-- end_slide -->

Programming
---

- Code is a list of instructions that the computer runs step by step, like a recipe
- Programming languages are languages that the computer can understand
- A program is made up of many pieces of code

Well, of course these are oversimplifications, but we're not gonna go deep into this in the interest of time.
Just take it as is and you'll be fine!

<!-- end_slide -->

Variables
---

Containers of data that we can store and read from

```
var my_number = 2
var my_name = "Mickole"
var my_list_of_interests = ["Keyboards", "FOSS", "Game dev", "Computers"]
var my_boolean = true
var my_vector = Vector2(1.5, 3.2)

print(my_number)

# Reassignment
my_number = 3
```

It consists of a name (identifier) and a value

<!-- end_slide -->

Booleans
---

Basically `true` or `false`. Yes or no.

```
var yep = true
var nah = false

var my_number = 2
var my_other_number = 1 + 1

print(my_number == my_other_number)
```

Useful for storing data like:
- Is the player alive or dead?
- Does the opponent see the player?

<!-- end_slide -->

`if`, `else`
---

Run specific code based on conditions

```
var is_player_dead = player_hp == 0

if is_player_dead:
    # Code here that shows "You died" on screen
else:
    # Some other code we want to run if the player is alive
```

<!-- end_slide -->

`elif`
---

It doesn't always have to be `else`! It can be another condition!

```
if is_player_dead:
    # ...
elif is_player_turning_to_zombie:
    # ...
elif is_player_fully_zombie:
    # ...
else:
    # Player totally fine :D
```

Note that order matters!

<!-- end_slide -->

Functions
---

For when your code gets busy...

```
func _process():
    # 40 lines of code here that controls player movement
    # 50 lines of code here that updates game UI
    # 20 lines of code here that processes opponents' AI
```

<!-- pause -->

You organize them into nice little functions and "call" them.

```
func _process():
    move_player()
    update_game_ui()
    process_opponents_ai()

func move_player():
    # ...

func update_game_ui():
    # ...

func process_opponents_ai():
    # ... 
```

<!-- end_slide -->

Parameters in functions
---

How do we solve this mess?

```
var player_health = ...

if player_health == 0:
    update_player_health_bar_ui_to_zero()
elif player_health == 1:
    update_player_health_bar_ui_to_one()
elif player_health == 2:
    update_player_health_bar_ui_to_two()
# (and so on)
```

<!-- pause -->

We can pass data to functions! We call these **parameters**.

```
var player_health = ...

update_player_health_bar_ui(player_health)

func update_player_health_bar_ui(player_health):
    # ...
```

<!-- pause -->

We can even have more than one parameter.

```
func move_smash_bros_players(p1, p2, p3, p4):
    # ...
```

<!-- end_slide -->

Returning in functions
---

We can not only pass data *into* a function. We can also pass data *out* by `return`ing them.

```
func get_player_health(hp, bonus_hp):
     var total_hp = hp + bonus_hp
     return total_hp
```

<!-- pause -->
Unfortunately, unlike parameters, we can only return one piece of data.

But there are ways around this... 👀

<!-- end_slide -->

Arrays
---

Basically a list of things.

```
var player_stats = ["Agility 93", "Power 85", "Sneak 100"]

print(player_stats[0])

player_stats[1] = "Power 83"
```

<!-- pause -->
The way we represent player stats sucks though. Why so? How can we do better?

<!-- end_slide -->

Classes
---

If we have two or more pieces of primitive data that form a bigger piece of data, we can use a class for this!

```
class PlayerStat:
    var name
    var level

# elsewhere
var stats = PlayerStat.new()
stats.name = "Power"
stats.level = 83
```

<!-- pause -->

Okay, I tried classes with functions, and now I have this mess.

```
func make_player_stat(stat_name, stat_level):
    var stat = PlayerStat.new()
    stat.name = stat_name
    stat.level = stat_level

func decrease_level_of_player_stat(stat):
    stat.level = stat.level - 1

func increase_level_of_player_stat(stat):
    stat.level = stat.level + 1
```

How can we do better? 🤔

<!-- end_slide -->

Functions in classes
---

We can add functions **inside** a class!

Helpful for organizing functions specific to a class.

```
class PlayerStat:
    var name
    var level

    # This is a constructor
    func _init(stat_name, stat_level):
        name = stat_name
        level = stat_level

    func decrease_level():
        level -= 1

    func increase_level():
        level += 1
```

<!-- end_slide -->

Inheritance
---

We won't need this much, but just letting you know this is possible in GDScript.

```
class Animal:
    func make_sound():
        print("...")

class Dog extends Animal:
    func make_sound():
        print("bark!")
        
class Cat extends Animal:
    func make_sound():
        print("meow!")
```

<!-- end_slide -->

Other stuff
---

- Loops (`for`, `while`)
- Annotations (`@export`, `@onready`)
- Signals (`signal`, `.emit()`)
- Properties (`get`, `set`)
- Dictionaries (`{ "hello": "world", "my_num": 2 })`)
- Static typing (`var my_string: String`, `var my_greetings: Array[String]`)
- Enums (`enum Color { RED, GREEN, BLUE }`)
- Constants (`const PI = 3.14`)
- Pattern matching (`match`)
- Async execution (`await`)
- Static functions and members/fields
- Lambdas, anonymous functions

We *might* get into some of these later, but of course I'll explain when we encounter any.


<!-- end_slide -->

Downsides
---

- Nullable by default, no such thing as `Option<T>`
- No generics or parameterized types
- No interfaces or protocols
- No algebraic data structures (ADTs)
- Resource-counted memory model (if you consider this a downside)


<!-- end_slide -->

GDExtension
---

Don't like GDScript? Use GDExtension!

Godot supports other languages like C++, Rust, Python, etc. through native bindings
