addEventHandler("onClientResourceStart", resourceRoot, function()
  local app_id = "MK"
  if setDiscordApplicationID(app_id) then 
    setDiscordRichPresenceAsset("MK", "MK")
    setDiscordRichPresenceButton(1, "discord", "https://discord.gg/2jeTrvvj")
	setDiscordRichPresenceButton(1, "Connect", "mtasa:\5.57.39.38:22003")
    updateRPC()
  end 
end )

function updateRPC()
  local name = getPlayerName(localPlayer)
  setDiscordRichPresenceState("Players: "..#getElementsByType("player").." of 100")
  setDiscordRichPresenceDetails("Playing as "..name)
end
setTimer(updateRPC, 5000, 0)