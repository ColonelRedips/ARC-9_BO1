AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "arc9_bo1_projectile_base"
ENT.PrintName 			= "RPG-7 Rocket (BO1)"
ENT.Author 				= ""
ENT.Information 		= ""

ENT.Spawnable = false
ENT.AdminSpawnable = false

ENT.Model = "models/weapons/arc9/item/bo1_rpgrocket.mdl"
ENT.BoxSize = Vector(8, 4, 1)

ENT.Damage = 250
ENT.Radius = 300
ENT.ImpactDamage = 1200
ENT.SmokeTrailSize = 12
ENT.SmokeTrailTime = 1

ENT.Drunkenness = 5

ENT.Boost = 1200
ENT.Lift = 100
ENT.DragCoefficient = 0.05

if CLIENT then
    killicon.Add( "arc9_bo1_rocket_rpg", "arc9/weaponicons/arc9_bo1_rpg7", Color( 255, 255, 255, 255 ) )
end