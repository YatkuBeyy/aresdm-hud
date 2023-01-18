-- create : yatkubey

local x,y = guiGetScreenSize()
local w,h = 380,30
local w3,h3 = 120,30
local screenx, screeny = (x-w)/1.010, (y-h)/28
local font = dxCreateFont("font.otf", 11)

function hud()
    yatkuRec(screenx, screeny, w,h, 15, tocolor(8,8,8,210))
    yatkuRec(screenx/0.790, screeny/0.400, w3,h3, 15, tocolor(8,8,8,210))
    dxDrawText(""..getPlayerName(localPlayer), screenx/0.940, screeny/0.625, w2,h2, tocolor(255, 255, 255,255), 1, font, "center", "center", false, false, true, false, false) 
    dxDrawText("Can : "..math.floor(getElementHealth(localPlayer)), screenx/0.835, screeny/0.625, w2,h2, tocolor(255, 255, 255,255), 1, font, "center", "center", false, false, true, false, false)
    dxDrawText("Zırh : "..math.floor(getPedArmor(localPlayer)), screenx/0.755, screeny/0.625, w2s,h2, tocolor(255, 255, 255,255), 1, font, "center", "center", false, false, true, false, false)
    dxDrawText("₺ "..getPlayerMoney(localPlayer), screenx/0.755, screeny/0.320, w2,h2, tocolor(255, 255, 255,255), 1, font, "center", "center", false, false, true, false, false)
end
addEventHandler("onClientRender", root, hud)

function yatkuRec(x, y, width, height, radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+radius, width-(radius*2), height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawCircle(x+radius, y+radius, radius, 180, 270, color, color, 16, 1, postGUI)
    dxDrawCircle(x+radius, (y+height)-radius, radius, 90, 180, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, (y+height)-radius, radius, 0, 90, color, color, 16, 1, postGUI)
    dxDrawCircle((x+width)-radius, y+radius, radius, 270, 360, color, color, 16, 1, postGUI)
    dxDrawRectangle(x, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y+height-radius, width-(radius*2), radius, color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+width-radius, y+radius, radius, height-(radius*2), color, postGUI, subPixelPositioning)
    dxDrawRectangle(x+radius, y, width-(radius*2), radius, color, postGUI, subPixelPositioning)
end
