// Street Fighter EX2 Plus [Subset - Maniac Mode]
// #ID = 26527

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
CharLookup = {
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

ModeLookup = {
    0x00: "Arcade Mode",
    0x01: "Vs. Mode",
    0x02: "Team Battle Mode",
    0x05: "Practice Mode",
    0x07: "Options Mode",
    0x08: "Expert Mode",
    0x09: "the Bonus Game",
    0x0a: "Maniac Mode",
    0x0b: "Director Mode",
}

BonusModeLookup = {
    0x00: "Excel Break",
    0x01: "Satellite Fall",
    0x03: "Barrel",
}

TrialTables =
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
//--------------------------------------------------------------------------Player-Specific Values-----------------------------------------------------------------------------------------------------------------------
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
    Char_Bison = 0x15
    Char_Sagat = 0x16
    Char_Darun = 0x17
    Char_VRosso = 0x18
    Char_Area = 0x19
    Char_Hayate = 0x1e 
//-------------------------------------------------- ------------------------Trial Mode Values-----------------------------------------------------------------------------------------------------------------------
function CharManiacCompletion(Region, CharID) => bit0(0x1F53D0 + 2*(TrialTables[CharID]-1) - 0x578*Region)
//--------------------------------------------------------------------------Code Logic-----------------------------------------------------------------------------------------------------------------------
function Logic_Ach_ManiacClear(Region, CharID) =>
CurrentGameMode(Region) == Mode_Maniac && Player_CurrentChar(Region, P1) == CharID && CharManiacCompletion(Region, CharID) > prev(CharManiacCompletion(Region, CharID))
//--------------------------------------------------------------------------Achievements-----------------------------------------------------------------------------------------------------------------------
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
        trigger = Logic_Ach_ManiacClear(US, CharID)
    )
}
//--------------------------------------------------------------------------Create Everything-----------------------------------------------------------------------------------------------------------------------
Create_Ach_ManiacClear(CharID = Char_Ryu, Ach_Points = 50, AchID = 411529)
Create_Ach_ManiacClear(CharID = Char_Ken, Ach_Points = 50, AchID = 411530)
Create_Ach_ManiacClear(CharID = Char_ChunLi, Ach_Points = 50, AchID = 411531)
Create_Ach_ManiacClear(CharID = Char_Guile, Ach_Points = 25, AchID = 411532)
Create_Ach_ManiacClear(CharID = Char_Zangief, Ach_Points = 25, AchID = 411533)
Create_Ach_ManiacClear(CharID = Char_Dhalsim, Ach_Points = 50, AchID = 411534)
Create_Ach_ManiacClear(CharID = Char_Blanka, Ach_Points = 50, AchID = 411535)
Create_Ach_ManiacClear(CharID = Char_Hokuto, Ach_Points = 50, AchID = 411536)
Create_Ach_ManiacClear(CharID = Char_DDark, Ach_Points = 50, AchID = 411537)
Create_Ach_ManiacClear(CharID = Char_Skullo, Ach_Points = 25, AchID = 411538)
Create_Ach_ManiacClear(CharID = Char_CJack, Ach_Points = 50, AchID = 411539)
Create_Ach_ManiacClear(CharID = Char_Sharon, Ach_Points = 25, AchID = 411540)
Create_Ach_ManiacClear(CharID = Char_Nanase, Ach_Points = 50, AchID = 411541)
Create_Ach_ManiacClear(CharID = Char_Pullum, Ach_Points = 50, AchID = 411542)
Create_Ach_ManiacClear(CharID = Char_Darun, Ach_Points = 50, AchID = 411543)
Create_Ach_ManiacClear(CharID = Char_Vega, Ach_Points = 25, AchID = 411544)
Create_Ach_ManiacClear(CharID = Char_VRosso, Ach_Points = 50, AchID = 411545)
Create_Ach_ManiacClear(CharID = Char_Area, Ach_Points = 10, AchID = 411546)
Create_Ach_ManiacClear(CharID = Char_Sagat, Ach_Points = 25, AchID = 411547)
Create_Ach_ManiacClear(CharID = Char_Bison, Ach_Points = 50, AchID = 411548)
Create_Ach_ManiacClear(CharID = Char_Garuda, Ach_Points = 50, AchID = 411549)
Create_Ach_ManiacClear(CharID = Char_Shadow, Ach_Points = 50, AchID = 411550)
Create_Ach_ManiacClear(CharID = Char_Kairi, Ach_Points = 50, AchID = 411551)
Create_Ach_ManiacClear(CharID = Char_Hayate, Ach_Points = 50, AchID = 411552)
