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
  local lootTable = { --TODO
    160679, --Khor, Hammer of the Corrupted
    160680, --Titanspark Animator

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Altimor the Huntsman
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2167)  --TODO
  local lootTable = { --TODO
    160681, --Glaive of the Keepers
    160683, --Latticework Scalpel

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Hungering Destroyer
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2146) --TODO
  local lootTable = { --TODO
    160689, --Regurgitated Purifier's Flamestaff
    160685, --Biomelding Cleaver

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Artificer Xy'Mox
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2169) --TODO
  local lootTable = { --TODO
    160688, --Void-Binder
    160687, --Containment Analysis Baton

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Sun King's Salvation
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2166) --TODO
  local lootTable = { --TODO
    160678, --Bow of Virulent Infection
    160698, --Vector Deflector

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Lady Inerva Darkvein
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2195) --TODO
  local lootTable = { --TODO
    160684, --Pursax, the Backborer
    160691, --Tusk of the Reborn Prophet

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- The Council of Blood
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2194) --TODO
  local lootTable = { --TODO
    160686, --Voror, Gleaming Blade of the Stalwart
    160692, --Luminous Edge of Virtue

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)


  -----------------------------------
  ----- Sludgefist
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO
    160690, --Heptavium, Staff of Torturous Knowledge
    160693, --Lancet of the Deft Hand

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)

  -----------------------------------
  ----- Stoneborn Generals
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO
    160690, --Heptavium, Staff of Torturous Knowledge
    160693, --Lancet of the Deft Hand

  }
  self:RegisterBossLoot(CNA, lootTable, bossName)

  -----------------------------------
  ----- Sire Denathrius
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2147) --TODO
  local lootTable = { --TODO
    160690, --Heptavium, Staff of Torturous Knowledge
    160693, --Lancet of the Deft Hand

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
  ZoneDetect:RegisterMapID(XXXX, CNA) --TODO Zone ID
  ZoneDetect:RegisterNPCID(164406, CNA, 1) --Shriekwing
  ZoneDetect:RegisterNPCID(165066, CNA, 2) --Altimor the Huntsman
  ZoneDetect:RegisterNPCID(164261, CNA, 3) --Hungering Destroyer
  ZoneDetect:RegisterNPCID(166644, CNA, 4) --Artificer Xy'Mox
  ZoneDetect:RegisterNPCID(XXXXXX, CNA, 5) --Sun King's Salvation TODO ID
  ZoneDetect:RegisterNPCID(331022, CNA, 6) --Lady Inerva Darkvein
  ZoneDetect:RegisterNPCID(XXXXXX, CNA, 7) --The Council of Blood TODO ID
  ZoneDetect:RegisterNPCID(174733, CNA, 8) --Sludgefist
  ZoneDetect:RegisterNPCID(XXXXXX, CNA, 9) --Stoneborn Generals TODO ID
  ZoneDetect:RegisterNPCID(168938, CNA, 10) --Sire Denathrius
end
