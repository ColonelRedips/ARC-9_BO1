SWEP.Base = "arc9_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ARC9 - Black Ops" -- edit this if you like
SWEP.SubCategory = "Specials/Explosives"
SWEP.AdminOnly = false

SWEP.PrintName = "Strela-3"
SWEP.Class = "Missile Launcher"
SWEP.Description = [[
    Man-portable air defense system developed in the Soviet Union.

    After firing, a lock must be maintained while the missile is in flight. More powerful missiles than the Stinger, but harder to use. Due to ground clutter confusing the sensor, it will not reliably track ground targets.
]]
SWEP.Trivia = {
    Manufacturer = "KBM Kolomna",
    Calibre = "72mm Missiles",
    Mechanism = "Missile",
    Country = "USSR",
    Year = 1974,
    Games = [[BO1]]
}
SWEP.Credits = {
    Author = "Palindrone, Arctic"
}

SWEP.Slot = 4

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/c_bo1_strela3.mdl"
SWEP.WorldModel = "models/weapons/arc9/c_bo1_strela3.mdl"
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos        =    Vector(-7, 8.5, -4),
    Ang        =    Angle(-17, 10, 180),
    Bone    =    "ValveBiped.Bip01_R_Hand",
    Scale = 1.1,
}
SWEP.ViewModelFOVBase = 75

SWEP.DefaultBodygroups = "00000000000000"

SWEP.DamageMax = 25
SWEP.DamageMin = 15 -- damage done at maximum range
SWEP.RangeMax = 15000
SWEP.RangeMin = 0
SWEP.Penetration = 0
SWEP.DamageType = nil
SWEP.ShootEnt = "arc9_bo1_rocket_strela" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 10000

-- SWEP.PhysBulletMuzzleVelocity = 960 * 39.37

SWEP.NextBeepTime = 0
SWEP.TargetEntity = nil
SWEP.StartTrackTime = 0
SWEP.LockTime = 1

SWEP.HookP_BlockFire = function(self)
    return self:GetSightAmount() < 1
end

SWEP.Hook_GetShootEntData = function(self, data)
    local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 1)

    if tracktime >= 1 and self.TargetEntity and IsValid(self.TargetEntity) then
        data.Target = self.TargetEntity
    end
end

SWEP.Hook_Think = function(self)
    if self:GetSightAmount() >= 1 then

        if self.NextBeepTime > CurTime() then return end

        local tracktime = math.Clamp((CurTime() - self.StartTrackTime) / self.LockTime, 0, 2)

        -- if CLIENT then
        if tracktime >= 1 and self.TargetEntity then
            if CLIENT then
                self:EmitSound("ARC9_BO1.Rocket_LockOn", 75, 100)
            end
            self.NextBeepTime = CurTime() + 0.25
        else
            if CLIENT then
                self:EmitSound("ARC9_BO1.Rocket_LockOn_Start", 75, 100)
            end
            self.NextBeepTime = CurTime() + 1
        end
        -- end

        local targets = ents.GetAll()

        local best = nil
        local targetscore = 0

        for _, ent in ipairs(targets) do
            -- if ent:Health() <= 0 then continue end
            -- if !(ent:IsPlayer() or ent:IsNPC() or ent:GetOwner():IsValid()) then continue end
            if ent:IsWorld() then continue end
            if ent == self:GetOwner() then continue end
            if ent.IsProjectile then continue end
            if ent.UnTrackable then continue end
            local dot = (ent:GetPos() - self:GetShootPos()):GetNormalized():Dot(self:GetShootDir():Forward())

            if math.deg(math.acos(dot)) > 10 then continue end

            local entscore = 1

            if ent:IsPlayer() then entscore = entscore + 15 end
            if ent:IsNPC() then entscore = entscore + 10 end
            if ent:IsVehicle() then entscore = entscore + 25 end
            if ent:Health() > 0 then entscore = entscore + 5 end
            if ent.IsAirAsset then entscore = entscore + 100 end

            entscore = entscore + (dot * 2.5)

            entscore = entscore + (ent.ARC9TrackingScore or 0)

            if entscore > targetscore then
                -- local tr = util.TraceLine({
                --     start = self:GetShootPos(),
                --     endpos = ent:GetPos(),
                --     filter = self:GetOwner(),
                --     mask = MASK_VISIBLE_AND_NPCS
                -- })

                -- PrintTable(tr)

                -- if tr.Entity == ent then
                best = ent
                bestang = dot
                targetscore = entscore
                -- end
            end
        end

        if !best then self.TargetEntity = nil return end

        local aa, bb = best:WorldSpaceAABB()
        local vol = math.abs(bb.x - aa.x) * math.abs(bb.y - aa.y) * math.abs(bb.z - aa.z)
        -- local dimx = (bb.x - aa.x) / 2
        -- local dimy = (bb.y - aa.y) / 2
        -- local dimz = (bb.z - aa.z) / 2

        clutter = math.max(1000 - (vol / 1000), 128)

        -- local dimx = clutter / 50
        -- local dimy = clutter / 50
        -- local dimz = clutter / 100

        local tr2 = util.TraceLine({
            start = self:GetShootPos(),
            endpos = best:GetPos() + (self:GetShootDir():Forward() * clutter),
            filter = self:GetOwner(),
            mask = MASK_NPCWORLDSTATIC,
            -- maxs = Vector(-dimx, -dimy, -dimz),
            -- mins = Vector(dimx, dimy, dimz),
        })

        local tr3 = util.TraceLine({
            start = self:GetShootPos(),
            endpos = best:GetPos() + Vector(0, 0, -clutter),
            filter = self:GetOwner(),
            mask = MASK_NPCWORLDSTATIC,
            -- maxs = Vector(-dimx, -dimy, -dimz),
            -- mins = Vector(dimx, dimy, dimz),
        })

        -- -- Too much ground clutter
        if tr2.Hit and !tr2.HitSky then return end
        if tr3.Hit and !tr3.HitSky then return end

        if !self.TargetEntity then
            self.StartTrackTime = CurTime()
        end

        self.TargetEntity = best
    else
        self.TargetEntity = nil
    end
end

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

SWEP.DamageMax = 100 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1000 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 0 -- Units of wood that can be penetrated by this gun.

-------------------------- PHYS BULLET BALLISTICS

SWEP.AlwaysPhysBullet = true
SWEP.PhysBulletMuzzleVelocity = 5000
SWEP.PhysBulletDrag = 3
SWEP.FancyBullets = true

SWEP.ChamberSize = 0 -- dont fucking change this again.
SWEP.ClipSize = 1 -- DefaultClip is automatically set.
SWEP.ReloadTime = 1

SWEP.Crosshair = true
SWEP.MissileCrosshair = true
SWEP.CanBlindFire = false

SWEP.Recoil = 0.1
SWEP.RecoilSide = 0.1
SWEP.RecoilUp = 0.1

SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.5
SWEP.RecoilKick = 0.1
SWEP.PushBackForce = 20

SWEP.Spread = 0.002
SWEP.SpreadAddRecoil = 0

SWEP.SpreadMultSights = 0.1
SWEP.SpreadAddHipFire = 0.03
--SWEP.SpreadAddMove = 0
SWEP.SpreadAddMidAir = 0.1
-- SWEP.SpreadAddShooting = math.rad(5 / 37.5) -- 0

SWEP.RecoilPatternDrift = 20

SWEP.VisualRecoilUp = 1
SWEP.VisualRecoilSide = 0
SWEP.VisualRecoilRoll = 0
SWEP.VisualRecoilCenter = Vector(0, 0, 0)
SWEP.VisualRecoilPunch = 0
SWEP.VisualRecoilMultSights = 0

SWEP.Speed = 1

SWEP.ShootWhileSprint = true
SWEP.ReloadInSights = false

SWEP.SpeedMultSights = 0.8
SWEP.SpeedMultShooting = 0.75
SWEP.SpeedMultMelee = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.AimDownSightsTime = 1
SWEP.SprintToFireTime = 0.4

SWEP.RPM = 150
SWEP.AmmoPerShot = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "SINGLE"
    },
}
SWEP.ARC9WeaponCategory = 6
SWEP.NPCWeight = 75

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0

SWEP.Ammo = "RPG_Round" -- what ammo type the gun uses

SWEP.ShootVolume = 125
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0

SWEP.ShootSound = "ARC9_BO1.Strela_Fire"
SWEP.ShootSoundSilenced = "ARC9_BO1.MP5_Sil"

SWEP.MuzzleParticle = "muzzleflash_m79" -- Used for some muzzle effects.

SWEP.NoShellEject = true
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellScale = 1.5
SWEP.ShellMaterial = "models/weapons/arcticcw/shell_556_steel"

SWEP.MuzzleEffectQCA = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectQCA = 2 -- which attachment to put the case effect on
SWEP.ProceduralViewQCA = 1
SWEP.CamQCA = 2

SWEP.BulletBones = {
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSights = {
    Pos = Vector(-3.25, -12, -3.57),
    Ang = Angle(-5, 15, 0),
    Magnification = 1.25,
    ViewModelFOV = 60,
    CrosshairInSights = false,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-1.65, -6, -2),
    Ang = Angle(-2.5, 7.5, -2.5),
}

SWEP.HoldTypeHolstered = "passive"
SWEP.HoldType = "rpg"
SWEP.HoldTypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_RPG
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE

SWEP.ActivePos = Vector(0, 0, -1)
SWEP.ActiveAng = Angle(0, 0, -5)

SWEP.MovingPos = SWEP.ActivePos
SWEP.MovingAng = SWEP.ActiveAng

SWEP.MovingMidPoint = {
    Pos = SWEP.ActivePos,
    Ang = SWEP.ActiveAng
}

SWEP.CrouchPos = Vector(0, 0, -1)
SWEP.CrouchAng = Angle(0, 0, -5)

SWEP.SprintVerticalOffset = false
SWEP.SprintPos = Vector(0, 0, -1)
SWEP.SprintAng = Angle(0, 0, -5)

SWEP.CustomizePos = Vector(12.5, 40, 4)
SWEP.CustomizeAng = Angle(90, 0, 0)

SWEP.RestPos = Vector(0, 0, 0)
SWEP.RestAng = Angle(0, 0, 0)

SWEP.BarrelLength = 0 -- = 25

SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
}

SWEP.Hook_ModifyBodygroups = function(self, data)
    local vm = data.model
    local attached = data.elements

    if attached["bo1_pap"] then
        vm:SetSkin(2)
    end
end

SWEP.HookP_NameChange = function(self, name)

    local attached = self:GetElements()

    local gunname = "9K34 Strela-3"

    if attached["bo1_pap"] then
        gunname = "Stripe"
    end

    return gunname
end

SWEP.Attachments = {
    {
        PrintName = "Ammunition",
        DefaultCompactName = "AMMO",
        Bone = "j_gun",
        Pos = Vector(3, 0, 2),
        Ang = Angle(0, 0, 0),
        Category = {"bo1_pap_launcher"},
    },
    {
        PrintName = "Perk-a-Cola",
        DefaultCompactName = "COLA",
        Bone = "j_gun",
        Pos = Vector(-3, 0, -3),
        Ang = Angle(0, 0, 0),
        Category = "bo1_perkacola",
        ExcludeElements = {"mwc_perk", "mwc_proficiency"},
    },
    {
        PrintName = "Perk",
        DefaultCompactName = "PERK",
        Bone = "j_gun",
        Pos = Vector(-6, 0, -3),
        Ang = Angle(0, 0, 0),
        Category = "mwc_perk",
        ExcludeElements = {"bo1_perkacola"},
    },
    {
        PrintName = "Proficiency",
        DefaultCompactName = "PRO",
        Bone = "j_gun",
        Pos = Vector(-9, 0, -3),
        Ang = Angle(0, 0, 0),
        Category = "mwc_proficiency",
        ExcludeElements = {"bo1_perkacola"},
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = "ARC9_MW2E.M79_Draw", t = 1 / 35},
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = "ARC9_MW2E.M79_Holster", t = 1 / 35},
        }
    },
    ["fire"] = {
        Source = {
            "fire",
        },
    },
    ["fire_iron"] = {
        Source = {
            "fire_ads",
        },
    },
    ["reload"] = {
        Source = "reload",
        EventTable = {
            {s = "weapons/arc9/bo1_rpg/futz.wav", t = 20 / 30},
            {s = "weapons/arc9/bo1_rpg/slide.wav", t = 35 / 30},
            {s = "weapons/arc9/bo1_rpg/latch.wav", t = 50 / 30},
        },
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
        Time = 1,
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 1,
    },
}