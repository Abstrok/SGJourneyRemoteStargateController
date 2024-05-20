local modem = peripheral.find("modem") or error("No modem attached", 0)
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")
print("Write help for more info.")
repeat


local mess1 = io.read()
if mess1 == "help" then
print("Select a option:")
print("")
print("slmodem : Edit the local modem red ID")
print("")
print("sdmodem : Edit the destiny modem red ID")
print("")
print("glmodem : Show the local modem red ID")
print("")
print("gdmodem : Show the destiny modem red ID")
print("")
print("start: Start the Stargate program")
print("")
print("exit: finish the program")
end
if mess1 == "slmodem" then
shell.run("editlocalmodemid.lua")
end
if mess1 == "sdmodem" then
shell.run("editdestinymodemid.lua")
end
if mess1 == "glmodem" then
shell.run("getlocalmodemid.lua")
end
if mess1 == "gdmodem" then
shell.run("getdestinymodemid.lua")
end
if mess1 == "start" then

    for local1 in localmoden:lines() do
	    for remote1 in remotemodem:lines() do
	modem.open( tonumber(local1))
modem.transmit(tonumber(remote1),tonumber(local1), "restart")
repeat
local event, side, channel, replyChannel, message, distance
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1)
print("")
print(message)



local mess = io.read()


modem.transmit(tonumber(remote1),  tonumber(local1), mess)
if mess == "address" then
repeat
  event, side, channel, replyChannel, message, distance = os.pullEvent("modem_message")
until channel == tonumber(local1) 
print("")
print(message) 
print("")
end

until mess == "exit"
print("")
print("Write again \"exit\" to close the program")
    end

    end
 end

 until mess1 == "exit"
