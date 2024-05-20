
interface = peripheral.find("basic_interface") or peripheral.find("crystal_interface") or peripheral.find("advanced_crystal_interface")
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")
function dial(address)
    local addressLength = #address
    
   
    local start = interface.getChevronsEngaged() + 1
   
    for chevron = start,addressLength,1
    do
        local symbol = address[chevron]
		 if interface.getStargateType() == "sgjourney:pegasus_stargate" then
		interface.engageSymbol(symbol)
		end
        if interface.getStargateType() == "sgjourney:milky_way_stargate" then
            if chevron % 2 == 0 then
                interface.rotateClockwise(symbol)
            else
                interface.rotateAntiClockwise(symbol)
            end

            while(not interface.isCurrentSymbol(symbol))
            do
                sleep(0)
            end
            sleep(0.5)

            interface.openChevron()
            sleep(0.5)
            interface.closeChevron()
            sleep(0.5)
    end 
end
end

local modem = peripheral.find("modem") or error("No modem attached", 0)
 for local1 in localmoden:lines() do
	    for remote1 in remotemodem:lines() do
repeat 
modem.open(tonumber(local1))

modem.transmit(tonumber(remote1), tonumber(local1), "Write the address or -0 to leave:")

local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1)


if message ~= "-0" then
local array = {}
for numero in message:gmatch("([%d%.%+%-]+),?") do
    table.insert(array, tonumber(numero))
	
	dial(array)
end
if message == "restart" then
shell.run("disk/main")
end
end
until message == "-0"
shell.run("disk/main")
end
end
