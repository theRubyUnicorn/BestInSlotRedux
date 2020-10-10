local CastleNathria = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("CastleNathria")
local CNA = "CNA"
function CastleNathria:OnEnable()
  local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")

  local nathriaName = C_Map.GetMapInfo(1148).name
  self:RegisterExpansion("Shadowlands", EXPANSION_NAME7)
  self:RegisterRaidTier("Shadowlands", 80002, nathriaName, PLAYER_DIFFICULTY3, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
  self:RegisterRaidInstance(80002, CNA, nathriaName, {
    bonusids = { --TODO
      [1] = {3524},
      [2] = {3524},
      [3] = {3524},
      [4] = {3524},
    },
    difficultyconversion = {
      [1] = 4, --Raid LFR
      [2] = 3, --Raid Normal
      [3] = 5, --Raid Heroic
      [4] = 6, --Raid Mythic
    }
  })
  --------------------------------------------------
  ----- CastleNathria
  --------------------------------------------------


  -----------------------------------
  ----- Shriekwing
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2168) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183034, --Cowled Batwing Cloak
    182979, --Slippers of the Forgotten Heretic
    182993, --Chiropteran Leggings
    182976, --Double-Chained Utility Belt
    183027, --Errant Crusader's Greaves
    184016, --Skulker's Wing

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Huntsman Altimor
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2167)  --TODO
  local lootTable = { --TODO Conduits/Legendary
    183040, --Charm of Eternal Winter
    182996, --Grim Pursuant's Maille
    182995, --Spell-Woven Tourniquet
    182988, --Master Huntsman's Bandolier
    183018, --Hellhound Cuffs
    184017, --Bargast's Leash
    --Weapon Tokens
    183892, --Mystic Anima Spherule (Druid, Hunter, Mage)
  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Hungering Destroyer
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2146) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183028, --Cinch of Infinite Tightness
    183009, --Miasma-lacquered Jerkin
    183024, --Volatile Shadestitch Legguards
    183000, --Consumptive Chainmail Carapace
    183001, --Helm of Insatiable Appetite
    182992, --Endlessly Gluttonous Greaves
    182994, --Epaulettes of Overwhelming Force
    184022, --Consumptive Infusion
    184023, --Gluttonous Spike
    --Weapon Tokens
    183891, --Venerated Anima Spherule (Paladin, Priest, Shaman)

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Artificer Xy'Mox
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2169) --TODO
  local lootTable = { --TODO NO LOOT AVAILABLE
    160688, --

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Sun King's Salvation
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2166) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183033, --Mantle of Manifest Sins
    182986, --High Torturer's Smock
    183007, --Bleakwing Assassin's Grips
    182977, --Bangles of Errant Pride
    183025, --Stoic Guardsman's Belt
    184019, --Soul Igniter
    184018, --Splintered Heart of Al'ar
    184020, --Tuft of Smoldering Plumage
    --Weapon Tokens
    183893, --Abominable Anima Spherule (Death Knight, Demon Hunter, Warlock)

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Lady Inerva Darkvein
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2195) --TODO
  local lootTable = {  --TODO Conduits/Legendary
    183021, --Confidant's Favored Cap
    183026, --Gloves of Phantom Shadows
    182985, --Memento-Laden Cuisses
    183015, --Binding of Warped Desires
    183037, --Ritualist's Treasured Ring
    184025, --Memory of Past Sins
    --Weapon Tokens
    183889, --Thaumaturgic Anima Bead (Shaman, Mage, Warlock, Druid)


  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- The Council of Blood
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2194) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183039, --Noble's Birthstone Pendant
    183011, --Courtier's Costume Trousers
    183023, --Sparkling Glass Slippers
    182989, --Corset of the Deft Duelist
    183030, --Enchanted Toe-Tappers
    183014, --Castellan's Chainlink Grips
    182983, --Stoneguard Attendant's Boots
    184024, --Macabre Sheet Music
    --Weapon Tokens
    183890, --Zenith Anima Spherule

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Sludgefist
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183022, --Impossibly Oversized Mitts
    182981, --Leggings of Lethal Reverberations
    183005, --Heedless Pugilist's Harness
    183016, --Load-Bearing Belt
    183006, --Stoneclas Stompers
    182984, --Colossal Plate Gauntlets
    182999, --Rampaging Giant's Chestplate
    184026, --Hateful Chain

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)

  -----------------------------------
  ----- Stoneborn Generals
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183032, --Crest of the Legionnaire General
    182998, --Robes of the Cursed Commando
    183029, --Wicked Flanker's Gorget
    182991, --Oathsworn Soldier's Gauntlets
    183002, --Ceremonial Parade Legguards
    184027, --Stone Legion Heraldry
    --Weapon Tokens
    183895, --Apogee Anima Bead (Monk, Paladin, Priest, Warrior)
    183894, --Thaumaturgic Anima Bead (Druid, Mage, Shaman, Warlock)


  }
  self:RegisterBossLoot(CNA, lootTable, bossName)

  -----------------------------------
  ----- Sire Denathrius
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO Conduits/Legendary
    183020, --Shawl of the Penitent
    182980, --Sadist's Sinister Mask
    183003, --Pauldrons of Fatal Finality
    182997, --Diadem of Imperious Desire
    183036, --Most Regal Signet of Sire Denathrius
    184028, --Cabalist's Hymnal
    184030, --Dreadfire Vessel
    184029, --Manabound Mirror
    184031, --Sanguine Vintage
    --Weapon Tokens
    183896, --Abominable Anima Spherule (Death Knight, Demon Hunter, Warlock)
    183897, --Mystic Anima Spherule (Druid, Hunter, Mage)
    183898, --Venerated Anima Spherule (Paladin, Priest, Shaman)
    183899, --Zenith Anima Spherule (Monk, Rogue, Warrior)
  }
  self:RegisterBossLoot(CNA, lootTable, bossName)



  -----------------------------------
  ----- Trash loot
  -----------------------------------
  local bossName = L["Trash Loot"] --TODO everything
  local lootTable = {
    ----Cloth----
    160612, --Spellbound Specimen Handlers
    161071, --Bloody Experimenter's Wraps
    ----Leather----
    161075, --Antiseptic Specimen Handlers
    161072, --Splatterguards
    ----Mail----
    161076, --Iron-Grip Specimen Handlers
    161073, --Reinforced Test Subject Shackles
    ----Plate----
    161077, --Fluid-Resistant Specimen Handlers
    161074, --Crushproof Vambraces
  }
  self:RegisterBossLoot(CNA, lootTable, bossName)
end

function CastleNathria:InitializeZoneDetect(ZoneDetect)
  ZoneDetect:RegisterMapID(13224, CNA) --TODO verify Zone ID
  ZoneDetect:RegisterNPCID(164406, CNA, 1) --Shriekwing
  ZoneDetect:RegisterNPCID(165066, CNA, 2) --Huntsman Altimor
  ZoneDetect:RegisterNPCID(164261, CNA, 3) --Hungering Destroyer
  ZoneDetect:RegisterNPCID(166644, CNA, 4) --Artificer Xy'Mox
  ZoneDetect:RegisterNPCID(24664, CNA, 5) --Sun King's Salvation TODO verify ID
  ZoneDetect:RegisterNPCID(331022, CNA, 6) --Lady Inerva Darkvein
  ZoneDetect:RegisterNPCID(166971, CNA, 7) --The Council of Blood TODO verify ID
  ZoneDetect:RegisterNPCID(174733, CNA, 8) --Sludgefist
  ZoneDetect:RegisterNPCID(165318, CNA, 9) --Stoneborn Generals TODO verify ID
  ZoneDetect:RegisterNPCID(168938, CNA, 10) --Sire Denathrius
end
