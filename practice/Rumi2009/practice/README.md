<<<<<<< HEAD

=======
# 🌾 Sprout Lands - 2D Farming Game (Godot Practice)

Welcome to my practice workspace for learning 2D game development in **Godot 4.3**. This project follows along with an extensive 8-hour game development tutorial series focusing on creating a fully featured 2D farming and simulation game from scratch.

---

## 🎨 Assets & Attribution

This project uses the pixel art asset pack:
*   **Asset Pack:** [Sprout Lands Asset Pack by CupNooble](https://cupnooble.itch.io/sprout-lands-asset-pack)

---

## 📚 Tutorial & Learning Progress

*   **Tutorial Series:** [Godot 4.3 Complete 2D Farming Game Tutorial](https://youtu.be/it0lsREGdmc?si=Tg9lNFRLblncIsnj)[cite: 16]
*   **Current Progress:** Completed up to **Chapter 6: Creating choppable trees for the player** 

### Completed Milestones:
1.  **Project Setup & Tilemaps:** Learned how to use Tilemap Layers and configured custom tileset resources (`game_tile_set.tres`, `house_tile_set.tres`)[cite: 15, 16].
2.  **Player Controller & State Machine:** Implemented modular player states including Idle, Walk, Tilling, Watering, and Chopping using a robust state machine architecture (`scripts/state_machine/`)[cite: 13, 15].
3.  **Tool States & Interactions:** Added reusable interactable components (`components/interactable_component.gd`) and item usage logic.
4.  **World Building & Houses:** Constructed various building structures (Small, Medium, and Large houses) along with interactive door logic (`scenes/houses/`)[cite: 14].
5.  **Environmental Objects & Trees:** Set up choppable small trees and structured various gameplay test scenes (`scenes/test/`, `scenes/objects/trees/`)[cite: 14].

---

## 📂 Project Directory Structure

```text
res://
├── addons/                  # Editor plugins and tools (e.g., Wakatime time tracking)
├── assets/                  # Raw game art assets (characters, objects, tilesets, houses)
├── scenes/                  # Godot Scene (.tscn) files
│   ├── characters/          # Player character and state machine scenes
│   ├── components/          # Reusable components (e.g., InteractableComponent)
│   ├── houses/              # Building scenes and interactive door mechanisms
│   ├── objects/             # Environmental objects (e.g., small_tree)
│   └── test/                # Dedicated test scenes for feature validation
├── scripts/                 # GDScript logic files
│   ├── globals/             # Global singletons and data types (data_types.gd)
│   ├── state_machine/       # State machine node and node state scripts
│   └── game_input_events.gd # Global input management
└── Tilesets/                # Saved TileSet resources (.tres)
>>>>>>> 6e754e9 (Adding door and its interaction with the player, in addition to different house sizes, a scene for testing chopping trees gameplay and a README file)
