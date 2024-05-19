local modem = peripheral.find("modem") or error("No modem attached", 0)
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")
    for local1 in localmoden:lines() do
	    for remote1 in remotemodem:lines() do
	modem.open( tonumber(local1))
modem.transmit(tonumber(remote1),tonumber(local1), "restart")
repeat
local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1)


print(tostring(message))

local mess = io.read()
modem.transmit(tonumber(remote1),  tonumber(local1), mess)


until mess == "exit1"

    end

    end
