SWEP.Base = "arc9_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARC9 - Black Ops II" -- edit this if you like
SWEP.SubCategory = "Specials/Explosives"
SWEP.AdminOnly = false

SWEP.PrintName = "Storm PSR"
SWEP.Class = "Anti-Materiel Precision Rifle"
SWEP.Description = [[
    Multi-barrel piercing shot rifle based on metal storm technology.
]] --This one seems to be modified for a set charge count instead of the default operation mode of holding trigger to charge.
SWEP.Trivia = {
    Manufacturer = "MetalStorm",
    Calibre = "7.62x51mm NATO",
    Mechanism = "Metal Storm",
    Country = "USA",
    Year = 2025,
    Games = [[Call of Duty: Black Ops II]]
}
SWEP.Credits = {
    Author = "Palindrone"
}

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/c_bo2_storm.mdl"
SWEP.WorldModel = "models/weapons/arc9/c_bo2_storm.mdl"
SWEP.WorldModelMirror = "models/weapons/arc9/c_bo2_storm.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos        =    Vector(-9, 3.5, -6.7),
    Ang        =    Angle(-6, 0, 180),
    Bone    =    "ValveBiped.Bip01_R_Hand",
    Scale = 1,
}
SWEP.ViewModelFOVBase = 75

SWEP.DefaultBodygroups = "00000000000"

SWEP.DamageMax = 75
SWEP.DamageMin = 50 -- damage done at maximum range
SWEP.RangeMax = 10000
SWEP.RangeMin = 2500
SWEP.Penetration = 20
SWEP.ImpactForce = 25
SWEP.ArmorPiercing = 1
SWEP.DamageType = DMG_BULLET
SWEP.ShootEnt = nil -- entity to fire, if any
SWEP.EntityMuzzleVelocity = 10000

SWEP.PhysBulletMuzzleVelocity = 2500 * 39.37

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3,
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
SWEP.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ReloadTime = 1

SWEP.Crosshair = true
SWEP.CanBlindFire = false

SWEP.Recoil = 2
SWEP.RecoilSide = 0.7
SWEP.RecoilUp = 2

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 0.6

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.01 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.3
SWEP.RecoilKick = 4

SWEP.Spread = math.rad(2.3 / 37.5)
SWEP.SpreadMultRecoil = 1.25

SWEP.SpreadMultSights = 0
SWEP.SpreadAddHipFire = math.rad(250 / 37.5)
SWEP.SpreadAddMove = math.rad(0 / 37.5)
SWEP.SpreadAddMidAir = 0
-- SWEP.SpreadAddShooting = math.rad(5 / 37.5) -- math.rad(108 / 37.5)

SWEP.RecoilPatternDrift = 20

SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilSide = 0
SWEP.VisualRecoilRoll = 0
SWEP.VisualRecoilCenter = Vector(0, 0, 0)
SWEP.VisualRecoilPunch = 0
SWEP.VisualRecoilMultSights = 0

SWEP.Speed = 0.75

SWEP.ShootWhileSprint = true
SWEP.ReloadInSights = false

SWEP.SpeedMultSights = 0.8
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.AimDownSightsTime = 0.3
SWEP.SprintToFireTime = 0.3

SWEP.RPM = 600
SWEP.AmmoPerShot = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
}
SWEP.ARC9WeaponCategory = 5
SWEP.NPCWeight = 100

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0

SWEP.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVolume = 170
SWEP.ShootPitch = 80
SWEP.ShootPitchVariation = 0

SWEP.ShootSound = "ARC9_BO2.Storm_Fire"
SWEP.ShootSoundSilenced = "ARC9_BO2.Ballista_Sil"
SWEP.DistantShootSound = {"^weapons/ARC9/bo2_storm/fire/dist.wav"}

--SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.MuzzleParticle = "muzzleflash_g3" -- Used for some muzzle effects.

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 90
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectQCA = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectQCA = nil -- which attachment to put the case effect on
SWEP.ProceduralViewQCA = 1
SWEP.CamQCA = 2
SWEP.NoShellEject = true

SWEP.BulletBones = {
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSights = {
    Pos = Vector(-2.225, 0, 1),
    Ang = Angle(0.05, 0.1, 0),
    Magnification = 1.1,
    -- AssociatedSlot = 9,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "ar2"
SWEP.HoldTypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE

SWEP.ActivePos = Vector(0, -5, -1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.MovingPos = SWEP.ActivePos
SWEP.MovingAng = SWEP.ActiveAng

SWEP.MovingMidPoint = {
    Pos = SWEP.ActivePos,
    Ang = SWEP.ActiveAng
}

SWEP.BipodPos = Vector(-2.225, 1, -3)
SWEP.BipodAng = Angle(0.05, 0, 0)

SWEP.CrouchPos = Vector(0, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintVerticalOffset = false
SWEP.SprintPos = Vector(0, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(17.5, 40, 4)
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizeSnapshotFOV = 100

SWEP.RestPos = Vector(0, 0, -1)
SWEP.RestAng = Angle(0, 0, -5)

SWEP.BarrelLength = 0 -- = 25

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["fastmag"] = {
        Bodygroups = {
            {4,1}
        },
    },
    ["mount"] = {
        Bodygroups = {
            {2,1}
        },
    },
    ["muzzle"] = {
        Bodygroups = {
            {3,2}
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(self, data)
    local vm = data.model
    local attached = data.elements
    -- local CUSTSTATE = self:GetCustomize()
    if attached["psr_scope"] then
        vm:SetBodygroup(1,1)
    end

    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end
    if attached["bo1_pap"] then
        camo = camo + 2
    end
    vm:SetSkin(camo)
end

SWEP.HookP_NameChange = function(self, name)

    local attached = self:GetElements()

    local gunname = "Storm PSR"

    if attached["bo1_pap"] then
        gunname = "Lead Hurricane"
    end

    return gunname
end

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Bone = "j_reload",
        Pos = Vector(-5.975, 0, -0.225),
        Ang = Angle(0, 0, 0),
        Category = {"bo2_optic_storm"},
        Installed = "bo2_optic_stormpsr",
        Integral = true,
        Hidden = true,
    },
    {
        PrintName = "Ammunition",
        DefaultCompactName = "AMMO",
        Bone = "j_gun",
        Pos = Vector(7, 0, -2),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_ammo", "bo1_pap"},
    },
    {
        PrintName = "Perk-a-Cola",
        DefaultCompactName = "COLA",
        Bone = "j_gun",
        Pos = Vector(-2, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "bo1_perkacola",
        ExcludeElements = {"mwc_perk", "mwc_proficiency"},
    },
    {
        PrintName = "Perk",
        DefaultCompactName = "PERK",
        Bone = "j_gun",
        Pos = Vector(-5, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "mwc_perk",
        ExcludeElements = {"bo1_perkacola"},
    },
    {
        PrintName = "Proficiency",
        DefaultCompactName = "PRO",
        Bone = "j_gun",
        Pos = Vector(-8, 0, -5),
        Ang = Angle(0, 0, 0),
        Category = "mwc_proficiency",
        ExcludeElements = {"bo1_perkacola"},
    },
    {
        PrintName = "Cosmetic",
        Bone = "j_gun",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"universal_camo"},
        CosmeticOnly = true,
        Icon_Offset = Vector(-5, 0, 2.65),
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        -- Time = 1 / 35,
    },
    ["draw"] = {
        Source = "draw",
    },
    ["holster"] = {
        Source = "holster",
    },
    ["ready"] = {
        Source = "draw",
        -- Time = 1.1,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 13 / 35,
        EventTable = {
            {s = "ARC9_BO2.Storm_Spin", t = 1 / 60},
        },
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 13 / 35,
        EventTable = {
            {s = "ARC9_BO2.Storm_Spin", t = 1 / 60},
        },
    },
    ["reload"] = {
        Source = "reload",
        Time = 4.5,
        EventTable = {
            {s = "ARC9_BO2.Storm_Bolt", t = 0.5},
            {s = "ARC9_BO2.Storm_Open", t = 0.6},
            {s = "ARC9_BO2.Storm_Spring", t = 1.4},
            {s = "ARC9_BO2.Storm_ClipOut", t = 1.5},
            {s = "ARC9_BO2.Storm_ClipIn", t = 3.2},
            {s = "ARC9_BO2.Storm_Close", t = 3.85},
            {s = "ARC9_BO2.Storm_Spring", t = 3.85},
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 4.5,
        EventTable = {
            {s = "ARC9_BO2.Storm_Bolt", t = 0.5},
            {s = "ARC9_BO2.Storm_Open", t = 0.6},
            {s = "ARC9_BO2.Storm_Spring", t = 1.4},
            {s = "ARC9_BO2.Storm_ClipOut", t = 1.5},
            {s = "ARC9_BO2.Storm_ClipIn", t = 3.2},
            {s = "ARC9_BO2.Storm_Close", t = 3.85},
            {s = "ARC9_BO2.Storm_Spring", t = 3.85},
        },
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
}