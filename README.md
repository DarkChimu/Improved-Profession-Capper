# Improved Profession Capper

**Improved Profession Capper** is a World of Warcraft (3.3.5 / WotLK) addon that tells you which recipe to craft next in order to level your trade skills to the cap (450), based on your current skill level.

This is a fork of [Profession Capper](https://github.com/SamuelLira99/Profession-Capper) by [SamuelLira99](https://github.com/SamuelLira99), improved and maintained by [DarkChimu](https://github.com/DarkChimu).

When you open your **Profession frame**, the **Profession Capper frame** opens alongside it, showing you the optimal recipe to craft next. You can cycle through alternative recipes using the `<` and `>` buttons and craft directly from the addon UI.

By default the frame appears at the **bottom left** corner of the screen — drag it wherever you like.

---

## What's new in this fork

- **Spell ID-based recipe matching** — recipes are now looked up by spell ID instead of name string, making matching O(1) and locale-independent
- **Localization support (i18n)** — all UI strings are now localized; Spanish (`esES` / `esMX`) is fully supported alongside English
- **Improved unavailable recipe message** — when a recipe is not learned yet, the UI clearly says so instead of showing a generic "Unavailable"
- **Spanish locale profession name support** — the addon correctly handles localized profession names returned by the WoW client (e.g. `"Cocina"` instead of `"Cooking"`)
- **Bug fixes** — fixed silent Lua errors that caused the frame to not appear on certain rank ranges

---

## Installation

1. Download the latest release from [GitHub](https://github.com/DarkChimu/Improved-Profession-Capper/releases)
2. Extract the zip file
3. Move the `Profession_Capper` folder to `<WoW folder>/Interface/AddOns`
4. Reload the UI in-game: `/reload`

---

## Professions

### Primary Trade Skills

| Profession | Status |
|---|---|
| Enchanting | Fully supported |
| Tailoring | Fully supported |
| Blacksmithing | Fully supported |
| Alchemy | Fully supported |
| Engineering | Fully supported |
| Jewelcrafting | Fully supported |
| Leatherworking | Fully supported |
| Inscription | Fully supported |

### Secondary Professions

| Profession | Status |
|---|---|
| Cooking | Fully supported |
| First Aid | Fully supported |
| Fishing | Not supported |

### Gathering Skills

Herbalism, Mining, and Skinning are not supported and likely won't be — these level up through gathering, not crafting.

---

## Screenshots

#### Cap already reached
![Profession Capper - cap already reached](https://imgur.com/viU8cIc.jpg)

#### Enchanting
![Profession Capper - Enchanting](https://imgur.com/Zb8udRn.jpg)

#### Tailoring
![Profession Capper - Tailoring](https://imgur.com/qN6gBAN.jpg)

#### Blacksmithing
![Profession Capper - Blacksmithing](https://imgur.com/m36QPKT.jpg)

#### Alchemy
![Profession Capper - Alchemy](https://imgur.com/74Cw1lp.jpg)

#### Jewelcrafting
![Profession Capper - Jewelcrafting](https://imgur.com/rMzesUO.jpg)

#### Leatherworking
![Profession Capper - Leatherworking](https://imgur.com/7Gn10JT.jpg)

#### Inscription
![Profession Capper - Inscription](https://imgur.com/Zef1GWz.jpg)

#### Cooking
![Profession Capper - Cooking](https://imgur.com/wlDzjSS.jpg)

#### First Aid
![Profession Capper - First Aid](https://imgur.com/voG9Ecr.jpg)

#### Recipe not learned yet
![Profession Capper - Recipe not learnt yet](https://imgur.com/Q2eXK6f.jpg)

---

## Credits

- Original addon by [SamuelLira99](https://github.com/SamuelLira99) — [Profession-Capper](https://github.com/SamuelLira99/Profession-Capper)
- Fork improvements by [DarkChimu](https://github.com/DarkChimu)

## Support

Open an issue on [this repo](https://github.com/DarkChimu/Improved-Profession-Capper/issues).
