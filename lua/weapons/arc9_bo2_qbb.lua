SWEP.Base = "arc9_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARC9 - Black Ops II" -- edit this if you like
SWEP.SubCategory = "Light Machine Guns"
SWEP.AdminOnly = false

SWEP.PrintName = "QBB LSW"
SWEP.Class = "General Purpose Machine Gun"
SWEP.Description = [[Chinese fully automatic LMG in Light Squad Weapon configuration standard for the People's Liberation Army.
Highest rate of fire in class.]]
SWEP.Trivia = {
    Manufacturer = "Norinco",
    Calibre = "5.8x42mm DBP10",
    Mechanism = "Gas-Operated",
    Country = "China",
    Year = 1995,
    Games = [[Call of Duty: Black Ops II]]
}
SWEP.Credits = {
    Author = "Palindrone"
}

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/c_bo2_qbb.mdl"
SWEP.WorldModel = "models/weapons/w_rif_famas.mdl"
SWEP.WorldModelMirror = "models/weapons/arc9/w_bo2_qbb.mdl"
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelOffset = {
    Pos        =    Vector(-7, 3.5, -6.5),
    Ang        =    Angle(-7, 0, 180),
    Bone    =    "ValveBiped.Bip01_R_Hand",
    Scale = 1,
}
SWEP.ViewModelFOVBase = 75

-- SWEP.CustomCamoTexture = "models/weapons/arc9/bo1/black_detail"
-- SWEP.CustomCamoScale = 1
-- SWEP.CustomBlendFactor = 1

SWEP.DefaultBodygroups = "00000000000000"

SWEP.DamageMax = 30
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.RangeMax = 8000
SWEP.RangeMin = 2000
SWEP.Penetration = 8
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.EntityMuzzleVelocity = 10000

SWEP.PhysBulletMuzzleVelocity = 850 * 39.37

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(255, 255, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

SWEP.ChamberSize = 0 -- dont fucking change this again.
SWEP.ClipSize = 75 -- DefaultClip is automatically set.
SWEP.ReloadTime = 1

SWEP.Crosshair = true
SWEP.CanBlindFire = false

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.7
SWEP.RecoilUp = 1

SWEP.RecoilRandomUp = 0.2
SWEP.RecoilRandomSide = 0.6

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.01 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5
SWEP.RecoilKick = 1

SWEP.Spread = math.rad(2.15 / 37.5)
SWEP.SpreadMultShooting = 1.25

SWEP.SpreadMultSights = 0.1
SWEP.SpreadAddHipFire = math.rad(150 / 37.5)
SWEP.SpreadAddMove = math.rad(0 / 37.5)
SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddShooting = math.rad(5 / 37.5) -- 0 -- = math.rad(110 / 37.5)

SWEP.RecoilPatternDrift = 20

SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilSide = 0
SWEP.VisualRecoilRoll = 0
SWEP.VisualRecoilCenter = Vector(0, 0, 0)
SWEP.VisualRecoilPunch = 0
SWEP.VisualRecoilMultSights = 0

SWEP.Speed = 0.8

SWEP.ShootWhileSprint = true
SWEP.ReloadInSights = false

SWEP.SpeedMultSights = 0.8
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.AimDownSightsTime = 0.11
SWEP.SprintToFireTime = 0.14

SWEP.RPM = 650
SWEP.AmmoPerShot = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
    },
}
SWEP.ARC9WeaponCategory = 4
SWEP.NPCWeight = 100

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0

SWEP.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVolume = 125
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0

SWEP.ShootSound = "ARC9_BO2.QBB_Fire"
SWEP.ShootSoundSilenced = "ARC9_BO2.LSAT_Sil"
SWEP.DistantShootSound = {
    "^weapons/ARC9/bo2_generic_lmg/dist/l.wav",
    "^weapons/ARC9/bo2_generic_lmg/dist/r.wav"
}

SWEP.UBGLIntegralReload = true -- The UBGL uses reload animations that are baked into the gun.
SWEP.DoFireAnimationUBGL = true
SWEP.NoShellEjectUBGL = true
SWEP.MuzzleEffectQCAUBGL = 1

--SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.MuzzleParticle = "muzzleflash_famas" -- Used for some muzzle effects.

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.4

SWEP.MuzzleEffectQCA = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectQCA = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewQCA = 1
SWEP.CamQCA = 4

SWEP.BulletBones = {
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSights = {
    Pos = Vector(-2.535, -1, 0.5),
    Ang = Angle(0.025, 0.1, 0),
    Magnification = 1.1,
    ViewModelFOV = 60,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-1.2525, -0.5, 0.25),
    Ang = Angle(0.0125, 0.05, -2.5),
}

SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2

SWEP.ActivePos = Vector(0, 0, -1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.MovingPos = SWEP.ActivePos
SWEP.MovingAng = SWEP.ActiveAng

SWEP.MovingMidPoint = {
    Pos = SWEP.ActivePos,
    Ang = SWEP.ActiveAng
}

SWEP.CrouchPos = SWEP.ActivePos + Vector(-1, 0, -1)
SWEP.CrouchAng = SWEP.ActiveAng

SWEP.RestPos = SWEP.ActivePos
SWEP.RestAng = SWEP.ActiveAng

SWEP.SprintVerticalOffset = false
SWEP.SprintPos = SWEP.ActivePos
SWEP.SprintAng = SWEP.ActiveAng

SWEP.BipodPos = Vector(-2.335, 1.5, -1.5)
SWEP.BipodAng = Angle(0.025, 0.1, 0)

SWEP.CustomizePos = Vector(19, 40, 4)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotPos = Vector(0, 5, 0)

SWEP.BarrelLength = 0 -- = 25

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["mount"] = {
        Bodygroups = {
            {2,1},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(self, data)

    local vm = data.model
    local attached = data.elements
    local CUSTSTATE = self:GetCustomize()
    local iron = 0

    if CUSTSTATE then
        vm:SetBodygroup(0,1)
        vm:SetBodygroup(1,1)
        iron = iron + 1
    else
        vm:SetBodygroup(0,0)
        vm:SetBodygroup(1,0)
    end

    if attached["mount"] then
        iron = iron + 2
    end

    vm:SetBodygroup(2,iron)

    if attached["bo1_bipod"] then
        vm:SetBodygroup(3,0)
    else
        vm:SetBodygroup(3,2)
    end
    if self:GetBipod() then
        vm:SetBodygroup(3,1)
    end

    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    if attached["bo1_pap"] then
        camo = 2
    end
    vm:SetSkin(camo)

end

SWEP.HookP_NameChange = function(self, name)

    local attached = self:GetElements()

    local gunname = "QJB-95-1"

    if attached["bo1_pap"] then
        gunname = "Quick Body Breaker"
    end

    return gunname
end

SWEP.HideBones = {
}
SWEP.ReloadHideBoneTables = {
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Bone = "j_gun",
        Pos = Vector(-1.25, 0, 3.79),
        Ang = Angle(0, 0, 0),
        Category = {"cod_optic", "cod_rail_riser"},
        InstalledElements = {"mount"}
    },
    {
        PrintName = "Muzzle",
        DefaultCompactName = "Three-Prong",
        Bone = "j_gun",
        Pos = Vector(24, 0, 1.2),
        Ang = Angle(0, 0, 0),
        Category = {"cod_muzzle"},
    },
    {
        PrintName = "Underbarrel",
        Bone = "j_gun",
        Pos = Vector(8, 0, -0.7),
        Ang = Angle(0, 0, 0),
        Category = {"cod_grips"},
    },
    {
        PrintName = "Bipod",
        DefaultCompactName = "None",
        Bone = "j_gun",
        Pos = Vector(15, 0, -0.7),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_bipod"},
        Installed = "bo1_bipod_integrated",
        Integral = true,
    },
    {
        PrintName = "Tactical Right",
        DefaultCompactName = "TAC R",
        Bone = "j_gun",
        Pos = Vector(6.75, 1, 0.75),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"cod_tactical"},
    },
    {
        PrintName = "Tactical Left",
        DefaultCompactName = "TAC L",
        Bone = "j_gun",
        Pos = Vector(6.75, -1, 0.75),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"cod_tactical"},
    },
    {
        PrintName = "Firing Group",
        DefaultCompactName = "AUTO",
        Bone = "j_gun",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_fcg", "bo1_fcg_semi", "bo1_fcg_bst"},
    },
    {
        PrintName = "Magazine",
        DefaultCompactName = "MAG",
        Bone = "j_gun",
        Pos = Vector(-8.5, 0, -1),
        Ang = Angle(0, 0, 0),
        Category = {"bo2_fastmag", "bo2_extmag"},
    },
    {
        PrintName = "Ammunition",
        DefaultCompactName = "AMMO",
        Bone = "tag_clip",
        Pos = Vector(1, 0, -4.25),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_ammo", "bo1_pap"},
    },
    {
        PrintName = "Perk-a-Cola",
        DefaultCompactName = "COLA",
        Bone = "j_gun",
        Pos = Vector(6, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "bo1_perkacola",
        ExcludeElements = {"mwc_perk", "mwc_proficiency"},
    },
    {
        PrintName = "Perk",
        DefaultCompactName = "PERK",
        Bone = "j_gun",
        Pos = Vector(3, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "mwc_perk",
        ExcludeElements = {"bo1_perkacola"},
    },
    {
        PrintName = "Proficiency",
        DefaultCompactName = "PRO",
        Bone = "j_gun",
        Pos = Vector(0, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "mwc_proficiency",
        ExcludeElements = {"bo1_perkacola"},
    },
    {
        PrintName = "Cosmetic",
        DefaultCompactName = "Gunmetal",
        Bone = "j_gun",
        Pos = Vector(-9, 0, 3),
        Ang = Angle(0, 0, 0),
        Category = "universal_camo",
        CosmeticOnly = true,
    },
    {
        Hidden = true,
        Bone = "j_gun",
        Pos = Vector(-3, 0, 2.65),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_stock_m"},
        Installed = "bo1_stock_medium"
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1 / 30,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
    },
    ["ready"] = {
        Source = "first_draw",
        Time = 1.46,
        EventTable = {
            {s = "ARC9_BO2.LMG_Back", t = 0.2},
            {s = "ARC9_BO2.LMG_Fwd", t = 0.4}
        }
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 5 / 30,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = {"fire_ads"},
        Time = 5 / 30,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 3.36,
        EventTable = {
            {s = "ARC9_BO1.RPK_MagOut", t = 0.3},
            {s = "ARC9_BO1.RPK_Futz", t = 1.95},
            {s = "ARC9_BO1.RPK_MagIn", t = 2.4},
        },
        MinProgress = 1.4,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 4.03,
        EventTable = {
            {s = "ARC9_BO1.RPK_MagOut", t = 0.3},
            {s = "ARC9_BO1.RPK_Futz", t = 1.95},
            {s = "ARC9_BO1.RPK_MagIn", t = 2.4},
            {s = "ARC9_BO2.LMG_Back", t = 2.75},
            {s = "ARC9_BO2.LMG_Fwd", t = 2.9},
        },
        MinProgress = 2.0,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 30 / 40
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1,
    },
    ["enter_sprint_empty"] = {
        Source = "sprint_in_empty",
        Time = 1,
    },
    ["idle_sprint_empty"] = {
        Source = "sprint_loop_empty",
        Time = 30 / 40
    },
    ["exit_sprint_empty"] = {
        Source = "sprint_out_empty",
        Time = 1,
    },
}