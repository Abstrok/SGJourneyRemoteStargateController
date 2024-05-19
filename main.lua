local modem = peripheral.find("modem") or error("No modem attached", 0)
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")
interface = peripheral.find("basic_interface") or peripheral.find("crystal_interface") or peripheral.find("advanced_crystal_interface")
 for local1 in localmoden:lines() do
	    for remote1 in remotemodem:lines() do
repeat
modem.open(tonumber(local1))

modem.transmit(tonumber(remote1), tonumber(local1), "Write: dial, disc, address or exit")

local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1)

if message == "restart" then
shell.run("disk/main")
end

if message == "dial" then
shell.run("disk/dial")
end
if message == "disc" then
modem.transmit(tonumber(remote1), tonumber(local1), "Stargate Disconnected")
interface.disconnectStargate()
end
if message == "address" then
local addresslocal = interface.getLocalAddress()
modem.transmit(tonumber(remote1), tonumber(local1), interface.addressToString(addresslocal))
end
until nil
end
end
