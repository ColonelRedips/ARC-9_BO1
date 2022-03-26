ATT.PrintName = [[OSW 490mm Barrel]]
ATT.CompactName = [[OSW]]
ATT.Icon = Material("entities/bo1_atts/bocw/atts_ar15/barrels/m4.png", "mips smooth")
ATT.Description = [[
    Shorter barrel made for paratrooper variants of the FAL with a handguard made by DSA for their OSW platform.
]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC-9 - BO1 Attachments"
ATT.Free = false

ATT.Category = {"bo1_fal_barrel"}
ATT.ActivateElements = {"barrel_osw"}
ATT.Model = "models/weapons/arc9/atts/bo2_osw_lhik.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-18, -2.6, 2)
ATT.IconOffset = Vector(0, 0, 0)

ATT.LHIK = true
ATT.LHIK_Priority = 0

ATT.Attachments = {
    {
        PrintName = "Underbarrel",
        DefaultCompactName = "UB",
        Bone = "j_gun",
        Pos = Vector(2, 0, -1.3),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_m203", "bo1_mk", "bo1_grips"},
        ExcludeElements = {"ar15_ris"}
    },
    {
        PrintName = "Tactical Left",
        DefaultCompactName = "TAC L",
        Bone = "j_gun",
        Pos = Vector(3.25, -0.7, 0),
        Ang = Angle(0, 0, -90),
        Category =  {"bo1_tactical"}
    },
    {
        PrintName = "Tactical Right",
        DefaultCompactName = "TAC R",
        Bone = "j_gun",
        Pos = Vector(3.25, 0.7, 0),
        Ang = Angle(0, 0, 90),
        Category =  {"bo1_tactical"}
    },
    {
        PrintName = "Tactical Top",
        DefaultCompactName = "TAC TOP",
        Bone = "j_gun",
        Pos = Vector(3.25, 0, 0.5),
        Ang = Angle(0, 0, 180),
        Category =  {"bo1_tactical_top"},
        ExcludeElements = {"mw2_m4_irons"}
    },
}

-- ATT.MuzzleEffectQCA = 1

ATT.SpreadMult = 1.15
ATT.RecoilMult = 1.1
ATT.SpreadMultHipFire = 0.9
ATT.SpreadMultMove = 0.9

ATT.SpeedMult = 1.01
ATT.SpeedMultSights = 1.05

ATT.AimDownSightsTimeMult = 0.9
ATT.SprintToFireTimeMult = 0.95

ATT.RangeMaxMult = 0.9
ATT.RangeMinMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 0.9