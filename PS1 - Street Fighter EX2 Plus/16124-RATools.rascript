// Street Fighter EX2 Plus
// #ID = 16124
//-----------------------------Rom 1-----------------------------------------
// Rom file = Street Fighter EX2 Plus (USA) [Redump]
// RA Hash = e16136324fd14ca2f9edd81fb4ee6441
//-----------------------------Rom 2-----------------------------------------
// Rom file = Street Fighter EX2 Plus (Japan) [Redump]
// RA Hash = 0bf7059794c3bc9bafa688b55218b29b

// Booleans
True = 0x01
False = 0x00
On = 0x01
Off = 0x00
Yes = 0x01
No = 0x00

// Region values
US = 0x00
JP = 0x01

// Player values
P1 = 0x00
P2 = 0x01
//--------------------------------------------------------------------------Arrays-----------------------------------------------------------------------------------------------------------------------
CharLookup = 
{
    0x00: "Kairi",
    0x01: "Hokuto",
    0x02: "Nanase",
    0x03: "Doctrine Dark",
    0x04: "Pullum Purna",
    0x05: "Sharon",
    0x06: "Skullomania",
    0x07: "Shadowgeist",
    0x08: "Cracker Jack",
    0x09: "Guile",
    0x0a: "Dhalsim",
    0x0b: "Garuda",
    0x0c: "Ryu",
    0x0d: "Ken",
    0x0e: "Chun-Li",
    0x0f: "Zangief",
    0x10: "Blanka",
    0x11: "Vega",
    0x12: "Kairi",
    0x13: "Shadowgeist",
    0x14: "Garuda",
    0x15: "M.Bison",
    0x16: "Sagat",
    0x17: "Darun Mister",
    0x18: "Vulcano Rosso",
    0x19: "Area",
    0x1a: "M.Bison",
    0x1b: "M.Bison II",
    0x1c: "Sagat",
    0x1d: "Cycloid",
    0x1e: "Hayate",
}

ModeLookup = 
{
    0x00: "Arcade Mode",
    0x01: "Vs. Mode",
    0x02: "Team Battle Mode",
    0x05: "Practice Mode",
    0x07: "the Options Menu",
    0x08: "Expert Mode",
    0x09: "the Bonus Game",
    0x0a: "Maniac Mode",
    0x0b: "Director Mode",
}

BonusGameModeLookup =
{
    0x00: "Excel Break",
    0x01: "Satellite Fall",
    0x03: "Barrel",
}

ManiacLookup =
{
    0x00: "not completed",
    0x01: "completed",
}

BGM_Names = 
{
    0x00: "Select",
    0x01: "Attract",
    0x02: "Regenerate",
    0x03: "Challenger",
    0x04: "Stage Clear",
    0x05: "Continue",
    0x06: "Staff Roll",
    0x07: "Game Over",
    0x08: "Lost Sea",
    0x09: "Mahatma Temple with Hymu",
    0x0a: "Three Tree",
    0x0b: "Crowded Town",
    0x0c: "Flash Train",
    0x0d: "Fake World",
    0x0e: "More Stonger",
    0x0f: "Pearl in the Sky",
    0x10: "Amusementive Crime 2",
    0x11: "Passage of Lotus",
    0x12: "White Field",
    0x13: "The Infinite Earth",
    0x14: "Green Shower",
    0x15: "Irene",
    0x16: "Frozen Mist",
    0x17: "Digital Ignition",
    0x18: "The Battle of the Flame",
    0x19: "Before Moon",
    0x1a: "Bonus Game",
    0x1b: "Phantom Bomb",
    0x1c: "The Battle of the Flame 2",
    0x20: "Crash Power Plant",
}

TrialTables = // Match Character ID's to their position in the trial table
{
    0x00: 0x17,
    0x01: 0x08,
    0x02: 0x0d,
    0x03: 0x09,
    0x04: 0x0e,
    0x05: 0x0c,
    0x06: 0x0a,
    0x07: 0x16,
    0x08: 0x0b,
    0x09: 0x04,
    0x0a: 0x06,
    0x0b: 0x15,
    0x0c: 0x01,
    0x0d: 0x02,
    0x0e: 0x03,
    0x0f: 0x05,
    0x10: 0x07,
    0x11: 0x10,
    0x15: 0x14,
    0x16: 0x13,
    0x17: 0x0f,
    0x18: 0x11,
    0x19: 0x12,
    0x1e: 0x18,
}
//--------------------------------------------------------------------------Universal Values-----------------------------------------------------------------------------------------------------------------------
function VersionCheck(Region) => byte(0x1CF4F0 + 0x1A4*Region) == 86 - 20*Region
function DemoActive(Region) => byte(0x1F4F03 - 0x758*Region) == 3
function BGLayerCheck(Region) => byte(0x1E6698 - 0x578*Region)
    BG_Visible = 0x00
function BGM(Region) => byte(0x1D0E38 + 0x18C*Region)
    // BGM values
    BGM_CharSelect = 0x00
    BGM_Bonus = 0x1a
function CurrentGameMode(Region) => byte(0x1EEAB0 - 0x758*Region)
    // Mode values
    Mode_Arcade = 0x00
    Mode_Versus = 0x01
    Mode_TeamBattle = 0x02
    Mode_Practice = 0x05
    Mode_Options = 0x07
    Mode_Expert = 0x08
    Mode_Bonus = 0x09
    Mode_Maniac = 0x0a
    Mode_Director = 0x0b

function StageCleared(Region) => byte(0x1E6686 - 0x578*Region)
function WinsCount(Region) => byte(0x1E668E - 0x578*Region)
function WinsCount_Clone(Region) => byte(0x1E668F - 0x578*Region)

function CurrentRound(Region) => byte(0x1E6679 - 0x578*Region)
function MatchTimer(Region) => word_be(0x1E667C - 0x578*Region)
function MatchTimer_Seconds(Region) => byte(0x1E667C - 0x578*Region)
function Score(Region) => dword(0x1E9594 - 0x578*Region)

function MenuCheck() => bit7(0x1FE3FB) == 1
//--------------------------------------------------------------------------Player-Specific Values-----------------------------------------------------------------------------------------------------------------------
function Player_InputFlags(Region, Player) => word(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_Up(Region, Player) => bit4(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_Down(Region, Player) => bit6(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_Left(Region, Player) => bit7(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_Right(Region, Player) => bit5(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_X(Region, Player) => bit6(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_Circle(Region, Player) => bit5(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_Triangle(Region, Player) => bit4(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_Square(Region, Player) => bit7(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_L1(Region, Player) => bit2(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_R1(Region, Player) => bit3(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_L2(Region, Player) => bit0(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_R2(Region, Player) => bit1(0x1EEB3B + 0x22*Player - 0x758*Region)
function Player_Input_Start(Region, Player) => bit3(0x1EEB3A + 0x22*Player - 0x758*Region)
function Player_Input_Select(Region, Player) => bit0(0x1EEB3A + 0x22*Player - 0x758*Region)    

function Player_CurrentChar(Region, Player) => byte(0x1E7FD2 + 0x187C*Player - 0x578*Region)
    // Character values
    Char_Kairi = 0x00
    Char_Hokuto = 0x01
    Char_Nanase = 0x02
    Char_DDark = 0x03
    Char_Pullum = 0x04
    Char_Sharon = 0x05
    Char_Skullo = 0x06
    Char_Shadow = 0x07
    Char_CJack = 0x08
    Char_Guile = 0x09
    Char_Dhalsim = 0x0a
    Char_Garuda = 0x0b
    Char_Ryu = 0x0c
    Char_Ken = 0x0d
    Char_ChunLi = 0x0e
    Char_Zangief = 0x0f
    Char_Blanka = 0x10
    Char_Vega = 0x11
    Char_CPU_Kairi = 0x12
    Char_CPU_Shadow = 0x13
    Char_CPU_Garuda = 0x14
    Char_Bison = 0x15
    Char_Sagat = 0x16
    Char_Darun = 0x17
    Char_VRosso = 0x18
    Char_Area = 0x19
    Char_CPU_Bison = 0x1a
    Char_Bison_II = 0x1b
    Char_CPU_Sagat = 0x1c
    Char_Bonus = 0x1d
    Char_Hayate = 0x1e 
function Player_CurrentCostume(Region, Player) => byte(0x1E7FD3 + 0x187C*Player - 0x578*Region)
    // Costume values
    Costume_Default = 0x00
    Costume_Alt1 = 0x01
    Costume_Alt2 = 0x02
function Player_Health(Region, Player) => byte(0x1E977C + 0x187C*Player - 0x578*Region)
    // Health KO value
    FullHP = 0xc8
    KO = 0xff
function Player_SuperMeter(Region, Player) => byte(0x1E977D + 0x187C*Player - 0x578*Region)
    // Meter value
    OneStock = 0x32
    TwoStocks = 0x64
    FullMeter = 0x96
function Player_CurrentSuperLevel(Region, Player) => byte(0x1E977E + 0x187C*Player - 0x578*Region)
function Player_RoundsWon(Region, Player) => byte(0x1E667E + Player - 0x578*Region)
function Player_Action(Region, Player) => byte(0x1E977A + 0x187C*Player - 0x578*Region)
    // Action value
    PlayerAction_SpecialSuper = 0x13  
function Player_State(Region, Player) => byte(0x1E977B + 0x187C*Player - 0x578*Region)
    // State values
    PlayerState_Stand = 0x00
    PlayerState_Crouch = 0x01
    PlayerState_KD = 0x02
    PlayerState_Air = 0x03
function Player_MoveID(Region, Player) => byte(0x1E977F + 0x187C*Player - 0x578*Region)
function Player_AttackStrength(Region, Player) => byte(0x1E9780 + 0x187C*Player - 0x578*Region)
function Player_VegaMaskless(Region, Player) => byte(0x1E978A + 0x187C*Player - 0x578*Region)
function Player_ExcelTimer(Region, Player) => byte(0x1E97B6 + 0x187C*Player - 0x578*Region)
function Player_HitCount(Region, Player) => byte(0x1EB004 + 0x47*Player - 0x578*Region)
//--------------------------------------------------------------------------Arcade Mode Values-----------------------------------------------------------------------------------------------------------------------
function Arcade_ClearCheck(Region) => byte(0x1E460D - 0x324*Region)
function Arcade_StageClearCheck(Region) => byte(0x1E6674 - 0x578*Region)
//--------------------------------------------------------------------------Team Battle Values-----------------------------------------------------------------------------------------------------------------------
function TeamBattle_PlayerChars(Region, Player) => byte(0x1EEAB7 + Player - 0x758*Region)
//--------------------------------------------------------------------------Training Mode Values-----------------------------------------------------------------------------------------------------------------------
function Training_Action(Region) => byte(0x1F4F1F - 0x758*Region)
function Training_Guard(Region) => byte(0x1F4F20 - 0x758*Region)
function Training_DataDisplay(Region) => byte(0x1F4F21 - 0x758*Region)
function Training_CommandDisplay(Region) => byte(0x1F4F22 - 0x758*Region)
function Training_SuperGauge(Region) => byte(0x1F4F23 - 0x758*Region)
function Training_SuperCancelLimit(Region) => byte(0x1F4F24 - 0x758*Region)
function Training_Juggling(Region) => byte(0x1F4F25 - 0x758*Region)
function Training_ReplaySetting(Region) => byte(0x1F4F26 - 0x758*Region)
//--------------------------------------------------------------------------Options Values-----------------------------------------------------------------------------------------------------------------------
function GameOptions(Region) => word(0x1F51E0 - 0x758*Region)

function Option_Difficulty(Region) => 4*bit2(0x1F51E0 - 0x758*Region) + 2*bit1(0x1F51E0 - 0x758*Region) + bit0(0x1F51E0 - 0x758*Region)
    // Difficulty value
    Diff_Easy = 0x00
    Diff_Normal = 0x02
    Diff_Hard = 0x07
function Option_Damage(Region) => 4*bit5(0x1F51E0 - 0x758*Region) + 2*bit4(0x1F51E0 - 0x758*Region) + bit3(0x1F51E0 - 0x758*Region)
    // Damage value
    Damage_Light = 0x00
    Damage_Medium = 0x03
    Damage_Heavy = 0x07
function Option_Timer(Region) => bit6(0x1F51E0 - 0x758*Region)
function Option_Rounds_CPU(Region) => 2*bit2(0x1F51E1 - 0x758*Region) + bit1(0x1F51E1 - 0x758*Region)
function Option_Rounds_Human(Region) => 2*bit4(0x1F51E1 - 0x758*Region) + bit3(0x1F51E1 - 0x758*Region)
    // Round count values
    Rounds_1 = 0x02
    Rounds_3 = 0x00
    Rounds_5 = 0x01
function Option_Shortcut(Region) => bit5(0x1F51E1 - 0x758*Region)
function Option_Handicap(Region) => bit7(0x1F51E1 - 0x758*Region)
//-------------------------------------------------- ------------------------Trial Mode Values-----------------------------------------------------------------------------------------------------------------------
function ExpertModeTable(Region, CharTable, CharPage) => bitcount(0x1F4ED0 + 2*(CharTable-1) + CharPage-1 - 0x758*Region)
function CharExpertCompletion(Region, CharTable) => sum_of(range(1, 2), f => ExpertModeTable(Region, CharTable, f))
function TotalExpertCompletion(Region) => sum_of(range(1, 24), f => CharExpertCompletion(Region, f))
function CharManiacCompletion(Region, CharID) => bit0(0x1F53D0 + 2*(TrialTables[CharID]-1) - 0x578*Region)
//--------------------------------------------------------------------------Bonus Game Values-----------------------------------------------------------------------------------------------------------------------
function CurrentBonusMode(Region) => byte(0x1E7FC2 - 0x578*Region)
    // Bonus mode values
    Bonus_ExcelBreak = 0x00
    Bonus_Satellite = 0x01
    Bonus_Barrel = 0x03
function BonusGameFinalScore(Region) => dword(0x1E66A0 - 0x578*Region)
function BarrelTimer(Region) => word(0x1F3028 - 0x758*Region)
function BarrelEndingCheck(Region) => byte(0x1E66E4 - 0x578*Region)
//--------------------------------------------------------------------------Unlock Flags-----------------------------------------------------------------------------------------------------------------------
function CharUnlockFlags(Region) => dword(0x1F4F08 - 0x758*Region)
function CharUnlockFlag_Garuda(Region) => bit3(0x1F4F09 - 0x758*Region)
function CharUnlockFlag_Shadowgeist(Region) => bit7(0x1F4F08 - 0x758*Region)
function CharUnlockFlag_Kairi(Region) => bit0(0x1F4F08 - 0x758*Region)
function CharUnlockFlag_Hayate(Region) => bit6(0x1F4F0B - 0x758*Region)

function ModeUnlocked_Maniac(Region) => byte(0x1EEB20 - 0x758*Region) != 0
function ModeUnlocked_Bonus(Region) => byte(0x1EEB21 - 0x758*Region) != 0
function ModeUnlocked_BisonII(Region) => byte(0x1EEB22 - 0x758*Region) != 0
function ModeUnlocked_SampleData(Region) => byte(0x1EEB23 - 0x758*Region) != 0
//--------------------------------------------------------------------------Advanced Functions-----------------------------------------------------------------------------------------------------------------------
function Proc_CheckInput(Region, Player) => Player_InputFlags(Region, Player) < prev(Player_InputFlags(Region, Player))
function Proc_VersionSplit(Region) => unless(!VersionCheck(Region)) && unless(once(Proc_CheckInput(Region, P2)))

function Proc_MatchStart(Region) => !DemoActive(Region) && prev(CurrentRound(Region)) == 0 && CurrentRound(Region) == 1
function Proc_Player_Dead(Region, Player) => Player_Health(Region, Player) != prev(Player_Health(Region, Player)) && Player_Health(Region, Player) == 255
function Proc_Satellite_Dead(Region, Player) => Player_Health(Region, Player) < prev(Player_Health(Region, Player)) && Player_Health(Region, Player) == 0
function Proc_Player_Super(Region, Player) => Player_CurrentSuperLevel(Region, Player) > 0 && Player_ExcelTimer(Region, Player) == 0
function Proc_Player_DoubleSuper(Region, Player) => prior(Player_CurrentSuperLevel(Region, Player)) == 1 && Player_CurrentSuperLevel(Region, Player) == 2 && Player_ExcelTimer(Region, Player) == 0
function Proc_Player_TripleSuper(Region, Player) => prior(Player_CurrentSuperLevel(Region, Player)) == 2 && Player_CurrentSuperLevel(Region, Player) == 3 && Player_ExcelTimer(Region, Player) == 0
function Proc_Player_MeteorCombo(Region, Player) => prior(Player_CurrentSuperLevel(Region, Player)) == 0 && Player_CurrentSuperLevel(Region, Player) == 3 && Player_ExcelTimer(Region, Player) == 0

function Proc_ArcadeRunStart(Region, CharID) => !DemoActive(Region) && Player_CurrentChar(Region, P1) == CharID && StageCleared(Region) == 0
function Proc_ArcadeStageBeaten(Region) => StageCleared(Region) > prev(StageCleared(Region)) // Doesn't work with Bison II
function Proc_ArcadeCredits(Region) => StageCleared(Region) >= 6 && prev(Arcade_ClearCheck(Region)) == 0 && Arcade_ClearCheck(Region) == 3
function Proc_BisonII_Active(Region) => CurrentRound(Region) == 1 && prev(Player_SuperMeter(Region, P1)) == 0 && Player_SuperMeter(Region, P1) == FullMeter
function Proc_BonusBGM_Active(Region) => BGM(Region) != prev(BGM(Region)) && BGM(Region) == BGM_Bonus
function Proc_Barrel_Active(Region) => CurrentGameMode(Region) == Mode_Bonus && CurrentBonusMode(Region) == Bonus_Barrel && Proc_BonusBGM_Active(Region)
function Proc_Barrel_TimerEmpty(Region) => BarrelTimer(Region) < prev(BarrelTimer(Region)) && BarrelTimer(Region) == 0
function Proc_Barrel_End(Region) => BarrelEndingCheck(Region) == prev(BarrelEndingCheck(Region))
function Proc_ExcelBreak_Active(Region) =>
(CurrentGameMode(Region) == Mode_Arcade || CurrentGameMode(Region) == Mode_Bonus) && Player_CurrentChar(Region, P2) == Char_Bonus && CurrentBonusMode(Region) == Bonus_ExcelBreak && 
Proc_BonusBGM_Active(Region)
function Proc_Satellite_Active(Region) =>
(CurrentGameMode(Region) == Mode_Arcade || CurrentGameMode(Region) == Mode_Bonus) && Player_CurrentChar(Region, P2) == Char_Bonus && CurrentBonusMode(Region) == Bonus_Satellite && 
Proc_BonusBGM_Active(Region)
//--------------------------------------------------------------------------Achievement Logic-----------------------------------------------------------------------------------------------------------------------
function Logic_Ach_ArcadeClear(Region, CharID) =>
CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) >= Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True && Option_Rounds_CPU(Region) < 2 &&
once(Proc_ArcadeRunStart(Region, CharID)) && Proc_ArcadeCredits(Region) && 
never(Player_CurrentChar(Region, P1) != CharID) &&
never(MenuCheck())

function Logic_Ach_SuperFinish(Region, CharID) =>
!DemoActive(Region) && CurrentGameMode(Region) == Mode_Arcade && Player_CurrentChar(Region, P1) == CharID && Player_CurrentChar(Region, P2) != Char_Bonus && Proc_Player_Dead(Region, P2) && Proc_Player_Super(Region, P1)

function Logic_Ach_ExpertClear(Region, CharID) => 
CurrentGameMode(Region) == Mode_Expert && Player_CurrentChar(Region, P1) == CharID && 
prev(CharExpertCompletion(Region, TrialTables[CharID])) == 15 && CharExpertCompletion(Region, TrialTables[CharID]) == 16

function Logic_Ach_ManiacClear(Region, CharID) =>
CurrentGameMode(Region) == Mode_Maniac && Player_CurrentChar(Region, P1) == CharID && CharManiacCompletion(Region, CharID) > prev(CharManiacCompletion(Region, CharID))

function Logic_Ach_ExpertAllClear(Region) =>
CurrentGameMode(Region) == Mode_Expert && prev(TotalExpertCompletion(Region)) == 383 && measured(TotalExpertCompletion(Region) == 384)

function Logic_Ach_SuperCancel(Region) =>
!DemoActive(Region) && CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) >= Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True &&
Player_CurrentChar(Region, P2) != Char_Bonus && Proc_Player_Dead(Region, P2) && Proc_Player_TripleSuper(Region, P1)

function Logic_Ach_MeteorFinish(Region) =>
!DemoActive(Region) && CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) >= Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True &&
Player_CurrentChar(Region, P2) != Char_Bonus && Proc_Player_Dead(Region, P2) && Proc_Player_MeteorCombo(Region, P1)

function Logic_Ach_Perfect(Region) =>
!DemoActive(Region) && CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) >= Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True &&
Player_Health(Region, P1) == FullHP && Player_CurrentChar(Region, P2) != Char_Bonus && Proc_Player_Dead(Region, P2)

function Logic_Ach_ArcadeHard(Region) =>
CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) == Diff_Hard && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True && Option_Rounds_CPU(Region) < 2 &&
once(Proc_MatchStart(Region)) && trigger_when(Proc_ArcadeCredits(Region)) && 
never(MenuCheck())

function Logic_Ach_SecretBoss(Region, BossChar) =>
CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) == Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True && Option_Rounds_CPU(Region) < 2 &&
once(Proc_MatchStart(Region)) && Player_CurrentChar(Region, P2) == BossChar && Proc_ArcadeStageBeaten(Region) && 
never(MenuCheck())

function Logic_Ach_BisonII(Region) =>
CurrentGameMode(Region) == Mode_Arcade &&
Option_Difficulty(Region) == Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True && Option_Rounds_CPU(Region) < 2 &&
once(Proc_MatchStart(Region)) && Player_CurrentChar(Region, P2) == Char_Bison_II  && prev(Player_RoundsWon(Region, P1)) == 0 && Player_RoundsWon(Region, P1) == 1 && 
never(MenuCheck())

function Logic_Ach_TeamBattle(Region) =>
CurrentGameMode(Region) == Mode_TeamBattle &&
Option_Difficulty(Region) >= Diff_Normal && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True &&
once(Proc_MatchStart(Region)) && TeamBattle_PlayerChars(Region, P1) == 1 && TeamBattle_PlayerChars(Region, P2) == 5 && trigger_when(prev(WinsCount(Region)) == 4 && WinsCount(Region) == 5) &&
never(CurrentRound(Region) < prev(CurrentRound(Region)))

function Logic_Ach_Barrel(Region, TargetScore) =>
once(Proc_Barrel_Active(Region)) && trigger_when(Score(Region) >= TargetScore && once(Proc_Barrel_TimerEmpty(Region)) && Proc_Barrel_End(Region)) &&
never(MenuCheck()) && never(BGM(Region) != BGM_Bonus)

function Logic_Ach_ExcelBreak_1Meter(Region) =>
once(Proc_ExcelBreak_Active(Region)) && Player_SuperMeter(Region, P1) >= TwoStocks && trigger_when(Proc_Player_Dead(Region, P2)) &&
never(MenuCheck()) && never(BGM(Region) != BGM_Bonus)

function Logic_Ach_ExcelBreak_TOD(Region) =>
once(Proc_ExcelBreak_Active(Region)) && trigger_when(Proc_Player_Dead(Region, P2)) &&
never(MenuCheck()) && never(BGM(Region) != BGM_Bonus) && never(Player_HitCount(Region, P1) < prev(Player_HitCount(Region, P1)) && Player_HitCount(Region, P1) == 0)

function Logic_Ach_SatelliteFall(Region, TargetTime) =>
once(Proc_Satellite_Active(Region)) && MatchTimer_Seconds(Region) >= TargetTime && trigger_when(Proc_Satellite_Dead(Region, P2)) &&
never(MenuCheck()) && never(BGM(Region) != BGM_Bonus)

function Logic_Ach_BisonII_NoMeter(Region) =>
(CurrentGameMode(Region) == Mode_Arcade || CurrentGameMode(Region) == Mode_Versus) && Player_CurrentChar(Region, P2) == Char_Bison_II && 
once(Proc_BisonII_Active(Region)) && trigger_when(prev(Player_RoundsWon(Region, P1)) == 0 && Player_RoundsWon(Region, P1) == 1) &&
never(MenuCheck()) && never(CurrentRound(Region) == 1 && Player_SuperMeter(Region, P1) < prev(Player_SuperMeter(Region, P1)))

function Logic_Ach_VegaMaskless(Region) =>
CurrentGameMode(Region) == Mode_Arcade && Player_CurrentChar(Region, P1) == Char_Vega && Proc_MatchStart(Region) && Player_VegaMaskless(Region, P1) == 1
//--------------------------------------------------------------------------Leaderboard Logic-----------------------------------------------------------------------------------------------------------------------
function Logic_LB_ArcadeClear_Start(Region, DiffLevel) =>
(CurrentGameMode(Region) == Mode_Arcade && Option_Difficulty(Region) == DiffLevel && Option_Damage(Region) == Damage_Medium && Option_Timer(Region) == True && 
Option_Rounds_CPU(Region) == Rounds_3 && Score(Region) == 0 && StageCleared(Region) == 0 && Proc_MatchStart(Region))
function Logic_LB_ArcadeClear_Cancel(Region) => once(Proc_CheckInput(Region, P2)) || Player_RoundsWon(Region, P2) == 2 || MenuCheck() || Score(Region) < prev(Score(Region))
function Logic_LB_ArcadeClear_Submit(Region) => Proc_ArcadeCredits(Region) && Score(Region) != 0
function Logic_LB_ArcadeClear_Value(Region) => measured(Score(Region), when=VersionCheck(Region))

function Logic_LB_Barrel_Start(Region) => Proc_Barrel_Active(Region)
function Logic_LB_Barrel_Cancel(Region) => once(Proc_CheckInput(Region, P2)) || MenuCheck() || BGM(Region) != BGM_Bonus || Score(Region) < prev(Score(Region))
function Logic_LB_Barrel_Submit(Region) => once(Proc_Barrel_TimerEmpty(Region)) && Proc_Barrel_End(Region) && Score(Region) != 0
function Logic_LB_Barrel_Value(Region) => measured(Score(Region), when=VersionCheck(Region))

function Logic_LB_ExcelBreak_Start(Region) => Proc_ExcelBreak_Active(Region)
function Logic_LB_ExcelBreak_Cancel(Region) => once(Proc_CheckInput(Region, P2)) || MenuCheck() || BGM(Region) != BGM_Bonus
function Logic_LB_ExcelBreak_Submit(Region) => BonusGameFinalScore(Region) > prev(BonusGameFinalScore(Region)) && BonusGameFinalScore(Region) != 0
function Logic_LB_ExcelBreak_Value(Region) => measured(BonusGameFinalScore(Region), when=VersionCheck(Region))

function Logic_LB_Satellite_Start(Region) => Proc_Satellite_Active(Region)
function Logic_LB_Satellite_Cancel(Region) => once(Proc_CheckInput(Region, P2)) || MenuCheck() || BGM(Region) != BGM_Bonus
function Logic_LB_Satellite_Submit(Region) => BonusGameFinalScore(Region) > prev(BonusGameFinalScore(Region)) && BonusGameFinalScore(Region) != 0
function Logic_LB_Satellite_Value(Region) => measured(BonusGameFinalScore(Region), when=VersionCheck(Region))
//--------------------------------------------------------------------------Rich Presence Logic----------------------------------------------------------------------------------------------------------------
function Logic_RP_MainMenu()
{
    rich_presence_conditional_display
    (
        MenuCheck(),
        "Currently in the Main Menu/Character Select Screen"
    )
}

function Logic_RP_Demo()
{
    rich_presence_conditional_display
    (
        (VersionCheck(US) && DemoActive(US)) || 
        (VersionCheck(JP) && DemoActive(JP)),
        "Currently in Demo Mode"
    )
}

function Logic_RP_CharSelect()
{
    rich_presence_conditional_display
    (
        (VersionCheck(US) && CurrentGameMode(US) == Mode_Arcade && BGM(US) == BGM_CharSelect) ||
        (VersionCheck(JP) && CurrentGameMode(JP) == Mode_Arcade && BGM(JP) == BGM_CharSelect),
        "Currently in the Character Select Screen"
    )
}

function Logic_RP_Credits()
{
    rich_presence_conditional_display
    (
        (VersionCheck(US) && CurrentGameMode(US) == Mode_Arcade && StageCleared(US) >= 6 && Arcade_ClearCheck(US) == 3) ||
        (VersionCheck(JP) && CurrentGameMode(JP) == Mode_Arcade && StageCleared(JP) >= 6 && Arcade_ClearCheck(JP) == 3),
        "Currently watching the credits"
    )
}

function Logic_RP_Options(Region)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Options,
        "Currently in {0}",
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup)
    )
}

function Logic_RP_BisonII(Region)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Arcade && Player_CurrentChar(Region, P2) == Char_Bison_II,
        "{0} vs. {1} in {2} with {3} points",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Char", Player_CurrentChar(Region, P2), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_value("Number", Score(Region))
    )

    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Versus && Player_CurrentChar(Region, P2) == Char_Bison_II,
        "{0} vs. {1} in the Bonus Game",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Char", Player_CurrentChar(Region, P2), CharLookup)
    )    
}

function Logic_RP_Arcade(Region)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Arcade && Player_CurrentChar(Region, P2) == Char_Bonus && (CurrentBonusMode(Region) == Bonus_Satellite || CurrentBonusMode(Region) == Bonus_ExcelBreak),
        "{0} is in {1} playing the Bonus Game - {2}",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_lookup("BonusGameMode", CurrentBonusMode(Region), BonusGameModeLookup)
    )

    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Arcade && Player_CurrentChar(Region, P2) == Char_CPU_Bison,
        "{0} vs. {1} in {2} on Stage 7 with {3} points",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Char", Player_CurrentChar(Region, P2), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_value("Number", Score(Region))
    )

    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Arcade,
        "{0} vs. {1} in {2} on Stage {3} with {4} points",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Char", Player_CurrentChar(Region, P2), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_value("Number", StageCleared(Region)),
        rich_presence_value("Number", Score(Region))
    )
}

function Logic_RP_OtherModes(Region)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && (CurrentGameMode(Region) == Mode_Versus || CurrentGameMode(Region) == Mode_TeamBattle || CurrentGameMode(Region) == Mode_Practice || CurrentGameMode(Region) == Mode_Director),
        "{0} vs. {1} in {2}",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Char", Player_CurrentChar(Region, P2), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup)
    )
}

function Logic_RP_Bonus(Region)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Bonus && (CurrentBonusMode(Region) == Bonus_Barrel || CurrentBonusMode(Region) == Bonus_Satellite || CurrentBonusMode(Region) == Bonus_ExcelBreak),
        "{0} is in {1} - {2}",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_lookup("BonusGameMode", CurrentBonusMode(Region), BonusGameModeLookup)
    )
}

function Logic_RP_Expert(Region, CharID)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Expert && Player_CurrentChar(Region, P1) == CharID,
        "{0} is in {1} with {2}/16 trials completed",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_value("Number", measured(CharExpertCompletion(Region, TrialTables[CharID])))
        //rich_presence_value("Number", CharExpertCompletion(Region, TrialTables[CharID]))
    )
}

function Logic_RP_Maniac(Region, CharID)
{
    rich_presence_conditional_display
    (
        VersionCheck(Region) && CurrentGameMode(Region) == Mode_Maniac && Player_CurrentChar(Region, P1) == CharID,
        "{0} is in {1} and has {2} his trial",
        rich_presence_lookup("Char", Player_CurrentChar(Region, P1), CharLookup),
        rich_presence_lookup("Mode", CurrentGameMode(Region), ModeLookup),
        rich_presence_lookup("Maniac", CharManiacCompletion(Region, CharID), ManiacLookup)
    )
}
//--------------------------------------------------------------------------Achievements-----------------------------------------------------------------------------------------------------------------------
function Create_Ach_ArcadeClear(CharID, Ach_Title, Ach_Type = "", AchID = 0)
{
    ArcadeClear_Desc = format("Beat Arcade Mode with {0} (Normal+ difficulty, 3+ rounds, default damage/time, no switching characters)", CharLookup[CharID])
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        type = Ach_Type,
        description = ArcadeClear_Desc,
        points = 10,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ArcadeClear(US, CharID)) || (Proc_VersionSplit(JP) && Logic_Ach_ArcadeClear(JP, CharID))
    )
}

function Create_Ach_SuperFinish(CharID, Ach_Title, AchID = 0)
{
    SuperFinish_Desc = format("Get a Super Finish with {0} in Arcade Mode", CharLookup[CharID])
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = SuperFinish_Desc,
        points = 2,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_SuperFinish(US, CharID)) || (Proc_VersionSplit(JP) && Logic_Ach_SuperFinish(JP, CharID))
    )
}

function Create_Ach_ExpertClear(CharID, AchID = 0)
{
    ExpertClear_Title = format("{0} Expert", CharLookup[CharID])
    ExpertClear_Desc = format("Complete all of {0}'s Expert Mode trials", CharLookup[CharID])
	
    achievement
    (
        id = AchID,
        title = ExpertClear_Title,
        description = ExpertClear_Desc,
        points = 10,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ExpertClear(US, CharID)) || (Proc_VersionSplit(JP) && Logic_Ach_ExpertClear(JP, CharID))
    )
}

function Create_Ach_ManiacClear(CharID, Ach_Points, AchID = 0)
{
    ManiacClear_Title = format("{0} Maniac", CharLookup[CharID])
    ManiacClear_Desc = format("Complete {0}'s Maniac Mode trial", CharLookup[CharID])
	
    achievement
    (
        id = AchID,
        title = ManiacClear_Title,
        description = ManiacClear_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ManiacClear(US, CharID)) || (Proc_VersionSplit(JP) && Logic_Ach_ManiacClear(JP, CharID))
    )
}

function Create_Ach_ExpertAllClear(Ach_Title, Ach_Points, AchID = 0)
{
    ExpertAllClear_Desc = format("Complete all Expert Mode trials")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = ExpertAllClear_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ExpertAllClear(US)) || (Proc_VersionSplit(JP) && Logic_Ach_ExpertAllClear(JP))
    )
}

function Create_Ach_SuperCancel(Ach_Title, Ach_Points, AchID = 0)
{
    SuperCancel_Desc = format("Finish a round with a Triple Super Cancel (Arcade Mode, Normal+ difficulty, default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = SuperCancel_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_SuperCancel(US)) || (Proc_VersionSplit(JP) && Logic_Ach_SuperCancel(JP))
    )
}

function Create_Ach_MeteorFinish(Ach_Title, Ach_Points, AchID = 0)
{
    MeteorFinish_Desc = format("Finish a round with a Meteor Combo (Arcade Mode, Normal+ difficulty, default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = MeteorFinish_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_MeteorFinish(US)) || (Proc_VersionSplit(JP) && Logic_Ach_MeteorFinish(JP))
    )
}

function Create_Ach_Perfect(Ach_Title, Ach_Points, AchID = 0)
{
    Perfect_Desc = format("Get a Perfect (Arcade Mode, Normal+ difficulty, default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = Perfect_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_Perfect(US)) || (Proc_VersionSplit(JP) && Logic_Ach_Perfect(JP))
    )
}

function Create_Ach_ArcadeHard(Ach_Title, Ach_Points, AchID = 0)
{
    ArcadeHard_Desc = format("Beat Arcade Mode on Hard difficulty (3+ rounds, default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = ArcadeHard_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ArcadeHard(US)) || (Proc_VersionSplit(JP) && Logic_Ach_ArcadeHard(JP))
    )
}

function Create_Ach_SecretBoss(BossChar, Ach_Title, Ach_Points, AchID = 0)
{
    SecretBoss_Desc = format("Fight and defeat {0} in Arcade Mode (Normal+ difficulty, 3+ rounds, default damage/time)", CharLookup[BossChar])
    if (BossChar == Char_Bison_II)
        SecretBoss_TriggerFunc = (Proc_VersionSplit(US) && Logic_Ach_BisonII(US)) || (Proc_VersionSplit(JP) && Logic_Ach_BisonII(JP))
    else
        SecretBoss_TriggerFunc = (Proc_VersionSplit(US) && Logic_Ach_SecretBoss(US, BossChar)) || (Proc_VersionSplit(JP) && Logic_Ach_SecretBoss(JP, BossChar))
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = SecretBoss_Desc,
        points = Ach_Points,
        trigger = SecretBoss_TriggerFunc
    )
}

function Create_Ach_TeamBattle(Ach_Title, Ach_Points, AchID = 0)
{
    TeamBattle_Desc = format("Win a 1 vs. 5 match in Team Battle (Normal+ difficulty, default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = TeamBattle_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_TeamBattle(US)) || (Proc_VersionSplit(JP) && Logic_Ach_TeamBattle(JP))
    )
}

function Create_Ach_Barrel(TargetScore, Ach_Title, Ach_Points, AchID = 0)
{
    Barrel_Desc = format("Complete the Barrel bonus game with {0} points or more", TargetScore)
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = Barrel_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_Barrel(US, TargetScore)) || (Proc_VersionSplit(JP) && Logic_Ach_Barrel(JP, TargetScore))
    )
}

function Create_Ach_ExcelBreak_1Meter(Ach_Title, Ach_Points, AchID = 0)
{
    ExcelBreak_1Meter_Desc = format("Complete Excel Break (Arcade or Bonus Game) using only 1 bar of super meter")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = ExcelBreak_1Meter_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ExcelBreak_1Meter(US)) || (Proc_VersionSplit(JP) && Logic_Ach_ExcelBreak_1Meter(JP))
    )
}

function Create_Ach_ExcelBreak_TOD(Ach_Title, Ach_Points, AchID = 0)
{
    ExcelBreak_TOD_Desc = format("Complete Excel Break (Arcade or Bonus Game) by defeating the Cycloid in one combo")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = ExcelBreak_TOD_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_ExcelBreak_TOD(US)) || (Proc_VersionSplit(JP) && Logic_Ach_ExcelBreak_TOD(JP))
    )
}

function Create_Ach_SatelliteFall(TargetTime, Ach_Title, Ach_Points, AchID = 0)
{
    SatelliteFall_Desc = format("Complete Satellite Fall (Arcade or Bonus Game) with at least {0} seconds remaining on the timer", TargetTime)
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = SatelliteFall_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_SatelliteFall(US, TargetTime)) || (Proc_VersionSplit(JP) && Logic_Ach_SatelliteFall(JP, TargetTime))
    )
}

function Create_Ach_BisonII_NoMeter(Ach_Title, Ach_Points, AchID = 0)
{
    BisonII_NoMeter_Desc = format("Beat M.Bison II (Arcade or Bonus Game) without using any super meter (Default damage/time)")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = BisonII_NoMeter_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_BisonII_NoMeter(US)) || (Proc_VersionSplit(JP) && Logic_Ach_BisonII_NoMeter(JP))
    )
}

function Create_Ach_VegaMaskless(Ach_Title, Ach_Points, AchID = 0)
{
    VegaMaskless_Desc = format("Start a match as Vega without his mask in Arcade Mode")
	
    achievement
    (
        id = AchID,
        title = Ach_Title,
        description = VegaMaskless_Desc,
        points = Ach_Points,
        trigger = (Proc_VersionSplit(US) && Logic_Ach_VegaMaskless(US)) || (Proc_VersionSplit(JP) && Logic_Ach_VegaMaskless(JP))
    )
}
//--------------------------------------------------------------------------Leaderboards-----------------------------------------------------------------------------------------------------------------------
function Create_LB_ArcadeClear(LB_Title, DiffLevel, LBID = 0)
{
    leaderboard
    (
        id = LBID,
        title = LB_Title,
        description = "Highest score, no continues",
        start  = (VersionCheck(US) && Logic_LB_ArcadeClear_Start(US, DiffLevel)) || (VersionCheck(JP) && Logic_LB_ArcadeClear_Start(JP, DiffLevel)),
        cancel = (VersionCheck(US) && Logic_LB_ArcadeClear_Cancel(US)) || (VersionCheck(JP) && Logic_LB_ArcadeClear_Cancel(JP)),
        submit = (VersionCheck(US) && Logic_LB_ArcadeClear_Submit(US)) || (VersionCheck(JP) && Logic_LB_ArcadeClear_Submit(JP)),
        value = max_of(Logic_LB_ArcadeClear_Value(US), Logic_LB_ArcadeClear_Value(JP)),
        format = "VALUE"
    )
}

function Create_LB_Barrel(LB_Title, LBID = 0)
{
    leaderboard
    (
        id = LBID,
        title = LB_Title,
        description = "Highest score",
        start  = (VersionCheck(US) && Logic_LB_Barrel_Start(US)) || (VersionCheck(JP) && Logic_LB_Barrel_Start(JP)),
        cancel = (VersionCheck(US) && Logic_LB_Barrel_Cancel(US)) || (VersionCheck(JP) && Logic_LB_Barrel_Cancel(JP)),
        submit = (VersionCheck(US) && Logic_LB_Barrel_Submit(US)) || (VersionCheck(JP) && Logic_LB_Barrel_Submit(JP)),
        value = max_of(Logic_LB_Barrel_Value(US), Logic_LB_Barrel_Value(JP)),
        format = "VALUE"
    )
}

function Create_LB_ExcelBreak(LB_Title, LBID = 0)
{
    leaderboard
    (
        id = LBID,
        title = LB_Title,
        description = "Highest score (Arcade or Bonus Game)",
        start  = (VersionCheck(US) && Logic_LB_ExcelBreak_Start(US)) || (VersionCheck(JP) && Logic_LB_ExcelBreak_Start(JP)),
        cancel = (VersionCheck(US) && Logic_LB_ExcelBreak_Cancel(US)) || (VersionCheck(JP) && Logic_LB_ExcelBreak_Cancel(JP)),
        submit = (VersionCheck(US) && Logic_LB_ExcelBreak_Submit(US)) || (VersionCheck(JP) && Logic_LB_ExcelBreak_Submit(JP)),
        value = max_of(Logic_LB_ExcelBreak_Value(US), Logic_LB_ExcelBreak_Value(JP)),
        format = "VALUE"
    )
}

function Create_LB_Satellite(LB_Title, LBID = 0)
{
    leaderboard
    (
        id = LBID,
        title = LB_Title,
        description = "Highest score (Arcade or Bonus Game)",
        start  = (VersionCheck(US) && Logic_LB_Satellite_Start(US)) || (VersionCheck(JP) && Logic_LB_Satellite_Start(JP)),
        cancel = (VersionCheck(US) && Logic_LB_Satellite_Cancel(US)) || (VersionCheck(JP) && Logic_LB_Satellite_Cancel(JP)),
        submit = (VersionCheck(US) && Logic_LB_Satellite_Submit(US)) || (VersionCheck(JP) && Logic_LB_Satellite_Submit(JP)),
        value = max_of(Logic_LB_Satellite_Value(US), Logic_LB_Satellite_Value(JP)),
        format = "VALUE"
    )
}
//--------------------------------------------------------------------------Rich Presence-----------------------------------------------------------------------------------------------------------------------
function RP_Display(Region)
{
    Logic_RP_BisonII(Region)
    Logic_RP_Arcade(Region)
    Logic_RP_OtherModes(Region)
    Logic_RP_Bonus(Region)
    Logic_RP_Expert(Region, Char_Ryu)
    Logic_RP_Expert(Region, Char_Ken)
    Logic_RP_Expert(Region, Char_ChunLi)
    Logic_RP_Expert(Region, Char_Guile)
    Logic_RP_Expert(Region, Char_Zangief)
    Logic_RP_Expert(Region, Char_Dhalsim)
    Logic_RP_Expert(Region, Char_Blanka)
    Logic_RP_Expert(Region, Char_Hokuto)
    Logic_RP_Expert(Region, Char_DDark)
    Logic_RP_Expert(Region, Char_Skullo)
    Logic_RP_Expert(Region, Char_CJack)
    Logic_RP_Expert(Region, Char_Sharon)
    Logic_RP_Expert(Region, Char_Nanase)
    Logic_RP_Expert(Region, Char_Pullum)
    Logic_RP_Expert(Region, Char_Darun)
    Logic_RP_Expert(Region, Char_Vega)
    Logic_RP_Expert(Region, Char_VRosso)
    Logic_RP_Expert(Region, Char_Area)
    Logic_RP_Expert(Region, Char_Sagat)
    Logic_RP_Expert(Region, Char_Bison)
    Logic_RP_Expert(Region, Char_Garuda)
    Logic_RP_Expert(Region, Char_Shadow)
    Logic_RP_Expert(Region, Char_Kairi)
    Logic_RP_Expert(Region, Char_Hayate)
    Logic_RP_Maniac(Region, Char_Ryu)
    Logic_RP_Maniac(Region, Char_Ken)
    Logic_RP_Maniac(Region, Char_ChunLi)
    Logic_RP_Maniac(Region, Char_Guile)
    Logic_RP_Maniac(Region, Char_Zangief)
    Logic_RP_Maniac(Region, Char_Dhalsim)
    Logic_RP_Maniac(Region, Char_Blanka)
    Logic_RP_Maniac(Region, Char_Hokuto)
    Logic_RP_Maniac(Region, Char_DDark)
    Logic_RP_Maniac(Region, Char_Skullo)
    Logic_RP_Maniac(Region, Char_CJack)
    Logic_RP_Maniac(Region, Char_Sharon)
    Logic_RP_Maniac(Region, Char_Nanase)
    Logic_RP_Maniac(Region, Char_Pullum)
    Logic_RP_Maniac(Region, Char_Darun)
    Logic_RP_Maniac(Region, Char_Vega)
    Logic_RP_Maniac(Region, Char_VRosso)
    Logic_RP_Maniac(Region, Char_Area)
    Logic_RP_Maniac(Region, Char_Sagat)
    Logic_RP_Maniac(Region, Char_Bison)
    Logic_RP_Maniac(Region, Char_Garuda)
    Logic_RP_Maniac(Region, Char_Shadow)
    Logic_RP_Maniac(Region, Char_Kairi)
    Logic_RP_Maniac(Region, Char_Hayate)
}

function Create_RP()
{
    Logic_RP_Demo()
    Logic_RP_Options(US)
    Logic_RP_Options(JP)
    Logic_RP_MainMenu()
    Logic_RP_CharSelect()
    Logic_RP_Credits()
    RP_Display(US)
    RP_Display(JP)
    rich_presence_display("Playing Street Fighter EX2 Plus")
}
//--------------------------------------------------------------------------Create Everything-----------------------------------------------------------------------------------------------------------------------
Create_Ach_ArcadeClear(CharID = Char_Ryu, Ach_Title = "Not Actually Shotokan Karate", Ach_Type = "progression", AchID = 110302)
Create_Ach_ArcadeClear(CharID = Char_Ken, Ach_Title = "The Best Ken... Maybe", Ach_Type = "progression", AchID = 110303)
Create_Ach_ArcadeClear(CharID = Char_ChunLi, Ach_Title = "The Strongest Woman in the World", Ach_Type = "progression", AchID = 110304)
Create_Ach_ArcadeClear(CharID = Char_Guile, Ach_Title = "Jean-Pierre Polnareff", Ach_Type = "progression", AchID = 110318)
Create_Ach_ArcadeClear(CharID = Char_Zangief, Ach_Title = "Churning Butter (Russian Version)", Ach_Type = "progression", AchID = 110305)
Create_Ach_ArcadeClear(CharID = Char_Dhalsim, Ach_Title = "Yoga Yoga Yoga Yoga", Ach_Type = "progression", AchID = 110306)
Create_Ach_ArcadeClear(CharID = Char_Blanka, Ach_Title = "\"Insert Wild Animal Noises Here\"", Ach_Type = "progression", AchID = 110307)
Create_Ach_ArcadeClear(CharID = Char_Hokuto, Ach_Title = "Yamato Nadeshiko", Ach_Type = "progression", AchID = 110316)
Create_Ach_ArcadeClear(CharID = Char_DDark, Ach_Title = "Vengeful Mercenary", Ach_Type = "progression", AchID = 110317)
Create_Ach_ArcadeClear(CharID = Char_Skullo, Ach_Title = "Vigilante Justice", Ach_Type = "progression", AchID = 110309)
Create_Ach_ArcadeClear(CharID = Char_CJack, Ach_Title = "Bouncer Turned Bodyguard", Ach_Type = "progression", AchID = 110314)
Create_Ach_ArcadeClear(CharID = Char_Sharon, Ach_Title = "That's Not C.Viper", Ach_Type = "progression", AchID = 110308)
Create_Ach_ArcadeClear(CharID = Char_Nanase, Ach_Title = "Naginata Wielder", Ach_Type = "progression", AchID = 110315)
Create_Ach_ArcadeClear(CharID = Char_Pullum, Ach_Title = "Arabic Dancer", Ach_Type = "progression", AchID = 110311)
Create_Ach_ArcadeClear(CharID = Char_Darun, Ach_Title = "Churning Butter (Indian Version)", Ach_Type = "progression", AchID = 110310)
Create_Ach_ArcadeClear(CharID = Char_Vega, Ach_Title = "Or Is It \"Balrog\"?", Ach_Type = "progression", AchID = 110319)
Create_Ach_ArcadeClear(CharID = Char_VRosso, Ach_Title = "The Italian Rushdown Extravaganza", Ach_Type = "progression", AchID = 110313)
Create_Ach_ArcadeClear(CharID = Char_Area, Ach_Title = "Missiles? In My Street Fighter?", Ach_Type = "progression", AchID = 110312)
Create_Ach_ArcadeClear(CharID = Char_Sagat, Ach_Title = "TIGER! TIGER! TIGER UPPERCUT!", Ach_Type = "progression", AchID = 110321)
Create_Ach_ArcadeClear(CharID = Char_Bison, Ach_Title = "BISOOOOONNN!!!", Ach_Type = "progression", AchID = 110320)
Create_Ach_ArcadeClear(CharID = Char_Garuda, Ach_Title = "Satsui no Hado Personified", AchID = 110325)
Create_Ach_ArcadeClear(CharID = Char_Shadow, Ach_Title = "Vigilante Injustice", AchID = 110324)
Create_Ach_ArcadeClear(CharID = Char_Kairi, Ach_Title = "GAAAAAAAAHHHHHH!!!", AchID = 110323)
Create_Ach_ArcadeClear(CharID = Char_Hayate, Ach_Title = "Star Gladiator", AchID = 110322)
Create_Ach_SuperFinish(CharID = Char_Ryu, Ach_Title = "Shin Shoryuken", AchID = 110326)
Create_Ach_SuperFinish(CharID = Char_Ken, Ach_Title = "Kuzuryu Reppa", AchID = 110327)
Create_Ach_SuperFinish(CharID = Char_ChunLi, Ach_Title = "Kikosho Goku", AchID = 110328)
Create_Ach_SuperFinish(CharID = Char_Guile, Ach_Title = "Sonic Boom Typhoon", AchID = 110343)
Create_Ach_SuperFinish(CharID = Char_Zangief, Ach_Title = "Cosmic Final Atomic Buster", AchID = 110333)
Create_Ach_SuperFinish(CharID = Char_Dhalsim, Ach_Title = "Yoga Inferno", AchID = 110329)
Create_Ach_SuperFinish(CharID = Char_Blanka, Ach_Title = "Super Electricity", AchID = 110330)
Create_Ach_SuperFinish(CharID = Char_Hokuto, Ach_Title = "Shirasegatana", AchID = 110344)
Create_Ach_SuperFinish(CharID = Char_DDark, Ach_Title = "Death Trap", AchID = 110345)
Create_Ach_SuperFinish(CharID = Char_Skullo, Ach_Title = "Super Skullo Energy", AchID = 110339)
Create_Ach_SuperFinish(CharID = Char_CJack, Ach_Title = "Homerun King", AchID = 110338)
Create_Ach_SuperFinish(CharID = Char_Sharon, Ach_Title = "Assault Rifle", AchID = 110336)
Create_Ach_SuperFinish(CharID = Char_Nanase, Ach_Title = "Machiyoi Tenkyu Geki", AchID = 110340)
Create_Ach_SuperFinish(CharID = Char_Pullum, Ach_Title = "Gradus Par", AchID = 110334)
Create_Ach_SuperFinish(CharID = Char_Darun, Ach_Title = "Gamble of Darun", AchID = 110335)
Create_Ach_SuperFinish(CharID = Char_Vega, Ach_Title = "Rolling Izuna Drop", AchID = 110342)
Create_Ach_SuperFinish(CharID = Char_VRosso, Ach_Title = "Quattro Panorami", AchID = 110331)
Create_Ach_SuperFinish(CharID = Char_Area, Ach_Title = "Final Cancer", AchID = 110332)
Create_Ach_SuperFinish(CharID = Char_Sagat, Ach_Title = "Tiger Storm", AchID = 110337)
Create_Ach_SuperFinish(CharID = Char_Bison, Ach_Title = "Psycho Break Smasher", AchID = 110341)
Create_Ach_SuperFinish(CharID = Char_Garuda, Ach_Title = "Kyojinsenshu", AchID = 110349)
Create_Ach_SuperFinish(CharID = Char_Shadow, Ach_Title = "Super Death Energy", AchID = 110348)
Create_Ach_SuperFinish(CharID = Char_Kairi, Ach_Title = "Kyouja Renbu", AchID = 110347)
Create_Ach_SuperFinish(CharID = Char_Hayate, Ach_Title = "Orochi Fujin", AchID = 110346)
Create_Ach_ExpertClear(CharID = Char_Ryu, AchID = 411495)
Create_Ach_ExpertClear(CharID = Char_Ken, AchID = 411496)
Create_Ach_ExpertClear(CharID = Char_ChunLi, AchID = 411497)
Create_Ach_ExpertClear(CharID = Char_Guile, AchID = 411498)
Create_Ach_ExpertClear(CharID = Char_Zangief, AchID = 411499)
Create_Ach_ExpertClear(CharID = Char_Dhalsim, AchID = 411500)
Create_Ach_ExpertClear(CharID = Char_Blanka, AchID = 411501)
Create_Ach_ExpertClear(CharID = Char_Hokuto, AchID = 411502)
Create_Ach_ExpertClear(CharID = Char_DDark, AchID = 411503)
Create_Ach_ExpertClear(CharID = Char_Skullo, AchID = 411504)
Create_Ach_ExpertClear(CharID = Char_CJack, AchID = 411505)
Create_Ach_ExpertClear(CharID = Char_Sharon, AchID = 411506)
Create_Ach_ExpertClear(CharID = Char_Nanase, AchID = 411507)
Create_Ach_ExpertClear(CharID = Char_Pullum, AchID = 411508)
Create_Ach_ExpertClear(CharID = Char_Darun, AchID = 411509)
Create_Ach_ExpertClear(CharID = Char_Vega, AchID = 411510)
Create_Ach_ExpertClear(CharID = Char_VRosso, AchID = 411511)
Create_Ach_ExpertClear(CharID = Char_Area, AchID = 411512)
Create_Ach_ExpertClear(CharID = Char_Sagat, AchID = 411513)
Create_Ach_ExpertClear(CharID = Char_Bison, AchID = 411514)
Create_Ach_ExpertClear(CharID = Char_Garuda, AchID = 411515)
Create_Ach_ExpertClear(CharID = Char_Shadow, AchID = 411516)
Create_Ach_ExpertClear(CharID = Char_Kairi, AchID = 411517)
Create_Ach_ExpertClear(CharID = Char_Hayate, AchID = 411518)
Create_Ach_ExpertAllClear(Ach_Title = "MY TOES!", Ach_Points = 50, AchID = 411519)
Create_Ach_SuperCancel(Ach_Title = "Superman Rebooted", Ach_Points = 2, AchID = 411520)
Create_Ach_MeteorFinish(Ach_Title = "Meteoric K.O.", Ach_Points = 5, AchID = 411521)
Create_Ach_Perfect(Ach_Title = "Perfect", Ach_Points = 5, AchID = 110355)
Create_Ach_ArcadeHard(Ach_Title = "Arcade Master", Ach_Points = 10, AchID = 110353)
Create_Ach_SecretBoss(BossChar = Char_CPU_Shadow, Ach_Title = "Handsome Foil", Ach_Points = 10, AchID = 411522)
Create_Ach_SecretBoss(BossChar = Char_CPU_Kairi, Ach_Title = "Came Back Crazy", Ach_Points = 25, AchID = 411523)
Create_Ach_SecretBoss(BossChar = Char_Bison_II, Ach_Title = "My Psycho Power Knows No Limits!", Ach_Points = 50, AchID = 411524)
Create_Ach_TeamBattle(Ach_Title = "One Against All", Ach_Points = 25, AchID = 110356)
Create_Ach_Barrel(TargetScore = 300000, Ach_Title = "Barrel Breaker", Ach_Points = 10, AchID = 110361)
Create_Ach_ExcelBreak_1Meter(Ach_Title = "Preserving the Economy", Ach_Points = 10, AchID = 411525)
Create_Ach_ExcelBreak_TOD(Ach_Title = "Blowout", Ach_Points = 10, AchID = 411526)
Create_Ach_SatelliteFall(TargetTime = 40, Ach_Title = "Satellite Destroyer", Ach_Points = 10, AchID = 110363)
Create_Ach_BisonII_NoMeter(Ach_Title = "Impossible Odds", Ach_Points = 10, AchID = 411527)
Create_Ach_VegaMaskless(Ach_Title = "Watch the Face", Ach_Points = 0, AchID = 411528)
Create_LB_ArcadeClear(LB_Title = "Arcade Mode - Default Settings", DiffLevel = Diff_Normal, LBID = 91784)
Create_LB_ArcadeClear(LB_Title = "Arcade Mode - Default Settings, Hard Difficulty", DiffLevel = Diff_Hard, LBID = 91785)
Create_LB_Barrel(LB_Title = "Barrel", LBID = 91786)
Create_LB_ExcelBreak(LB_Title = "Excel Break", LBID = 91787)
Create_LB_Satellite(LB_Title = "Satellite Fall", LBID = 91788)
Create_RP()
