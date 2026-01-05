-- 🚀 FPS BOOSTER | DELTA OPTIMIZER
-- Hecho para gente que no juega a 30 fps como cavernícola 😈

local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")

-- 📉 Quitar efectos pesados
for _, v in pairs(game:GetDescendants()) do
    if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Smoke") or v:IsA("Fire") then
        v.Enabled = false
    elseif v:IsA("Explosion") then
        v.Visible = false
    elseif v:IsA("Decal") then
        v.Transparency = 1
    end
end

-- 🧹 Limpiar iluminación
Lighting.GlobalShadows = false
Lighting.FogEnd = 9e9
Lighting.Brightness = 1
Lighting.OutdoorAmbient = Color3.fromRGB(128,128,128)

-- 🧱 Optimizar terreno
if Terrain then
    Terrain.WaterWaveSize = 0
    Terrain.WaterWaveSpeed = 0
    Terrain.WaterReflectance = 0
    Terrain.WaterTransparency = 0
end

-- 🖥️ Configuración gráfica mínima
settings().Rendering.QualityLevel = "Level01"

-- ⚡ Prioridad máxima al render
RunService:Set3dRenderingEnabled(true)

-- 🧼 Garbage cleaner (reduce stutter)
task.spawn(function()
    while task.wait(10) do
        collectgarbage("collect")
    end
end)

print("🔥 FPS BOOST ACTIVADO — disfruta tus 120 FPS, bestia.")
