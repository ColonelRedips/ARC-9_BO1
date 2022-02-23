ATT.PrintName = [[Custom Optic Riser]]
ATT.CompactName = [[RISER]]
ATT.Icon = Material("entities/bo1_atts/barrel/barrel.png")
ATT.Description = [[Three-Rail RIS Handguard allows for attachment of underbarrels.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC-9 - BO1 Attachments"
ATT.Free = false

ATT.Category = {"bo1_rail_riser"}
ATT.ActivateElements = {"bo1_rail_riser"}
ATT.Model = "models/weapons/arc9/item/bo2_custom_riser.mdl"
ATT.Scale = 1.1
ATT.ModelOffset = Vector(0, -0.5, -0.15)
ATT.ModelAngleOffset = Angle(0,-90,0)
ATT.Folder = "RISERS"

ATT.Attachments = {
    {
        PrintName = "Optic",
        Bone = "j_gun",
        Pos = Vector(-0.15, 0, -0.625),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 2, 0),
        Category = {"bo1_optic", "bo1_rail_riser"},
        InstalledElements = {"mount"},
    }
}