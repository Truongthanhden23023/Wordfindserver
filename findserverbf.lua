local function getScript(url)
    if syn and syn.request then
        return syn.request({Url = url, Method = "GET"}).Body
    elseif request then
        return request({Url = url, Method = "GET"}).Body
    elseif http_request then
        return http_request({Url = url, Method = "GET"}).Body
    elseif game and game.HttpGet then
        return game:HttpGet(url, true)
    else
        return nil
    end
end

local scriptContent = getScript("https://raw.githubusercontent.com/Truongthanhden23023/Findserverbloxfruit/refs/heads/main/Findserver.lua")

if scriptContent then
    loadstring(scriptContent)()
else
    warn("Không thể tải script! Hãy kiểm tra executor của bạn.")
end
