local modem = peripheral.find("modem") or error("No modem attached", 0)
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")
interface = peripheral.find("basic_interface") or peripheral.find("crystal_interface") or peripheral.find("advanced_crystal_interface")
 for local1 in localmoden:lines() do
	    for remote1 in remotemodem:lines() do
repeat
modem.open(tonumber(local1))

modem.transmit(tonumber(remote1), tonumber(local1), "Please, select a option")
modem.transmit(tonumber(remote1), tonumber(local1), "1: Dial")
modem.transmit(tonumber(remote1), tonumber(local1), "2: Disconnect Stargate")

local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1)

if message == "restart" then
shell.run("disk/main")
end

if tonumber(message) == 1 then
shell.run("disk/dial")
end
if tonumber(message) == 2 then
modem.transmit(tonumber(remote1), tonumber(local1), "Stargate Disconnected")
interface.disconnectStargate()
end
until nil
end
end
