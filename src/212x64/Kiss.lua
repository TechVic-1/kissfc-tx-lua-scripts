-- BEGIN 212x64

local RADIO = '212x64'

local drawScreenTitle = function(title, currentPage, totalPages)
    lcd.drawScreenTitle('KISS: ' .. title, currentPage, totalPages)
end

local drawTelemetry = function()
    lcd.drawText(75, 55, 'No telemetry', BLINK)
end

local drawSaving = function()
    lcd.drawFilledRectangle(40, 12, 120, 30, ERASE)
    lcd.drawRectangle(40, 12, 120, 30, SOLID)
    lcd.drawText(64, 18, 'Saving...', DBLSIZE + BLINK)
end

local function drawMenu(menuList, menuActive)
    local x = 40
    local y = 12
    local w = 120
    local h = #(menuList) * 8 + 6
    lcd.drawFilledRectangle(x, y, w, h, ERASE)
    lcd.drawRectangle(x, y, w - 1, h - 1, SOLID)
    lcd.drawText(x + 4, y + 3, 'Menu:')

    for i, e in ipairs(menuList) do
        if menuActive == i then
            lcd.drawText(x + 36, y + (i - 1) * 8 + 3, e.t, INVERS)
        else
            lcd.drawText(x + 36, y + (i - 1) * 8 + 3, e.t)
        end
    end
end

local function getDefaultTextOptions()
    return 0
end

-- END 212x64
