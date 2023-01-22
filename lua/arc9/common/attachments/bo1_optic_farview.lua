ATT.PrintName = "Farview Sniper Scope"
ATT.CompactName = [[AWM]]
ATT.Icon = Material("entities/bo1_atts/optics/bo1_vzoom.png", "mips smooth")
ATT.Description = [[
    Long range combat scope with variable zoom.

    bo.desc
]]
ATT.Pros = {
    "+ 3x Zoom",
    "+ Clearer sight picture"
}
ATT.Cons = {}
ATT.SortOrder = 4
ATT.MenuCategory = "ARC9 - BO1 Attachments"
ATT.Free = false
-- ATT.Folder = "SCOPE"

ATT.Category = {"bo1_awm_scope"}
ATT.ActivateElements = {"awm_scope"}

ATT.Model = "models/weapons/arc9/atts/bo1_farview.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)

ATT.Sights = {
    {
        Pos = Vector(-0.005, 7.5, -5.185),
        Ang = Angle(0, 0, 0),
        ViewModelFOV = 45,
        Magnification = 1,
        IgnoreExtra = true
    },
}

ATT.Attachments = {
    {
        PrintName = "CPU",
        Bone = "j_gun",
        Scale = Vector(1.5, 1.5, 1.5),
        Pos = Vector(-3.25, 0, -4.1),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"bo2_bcpu"},
        --ExcludeElements = {"no_tac_rail"},
    }
}

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 2
ATT.RTScopeFOV = 2
ATT.RTScopeFOVMax = 2
ATT.RTScopeFOVMin = 8
ATT.RTScopeAdjustable = true
ATT.RTScopeAdjustmentLevels = 4
ATT.RTScopeRes = 1024
ATT.RTScopeSurface = Material("models/weapons/arc9/bo1/bo1_acogs/longscope_lens")
ATT.RTScopeReticle = Material("hud/arc9_bo1/scopes/bo1_l96.png", "mips smooth")
ATT.RTScopeShadowIntensity = 1.5
ATT.RTScopeNoPP = false