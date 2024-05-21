local modem = peripheral.find("modem") or error("No modem attached", 0)
print("Write help for more info.")
local event, side, channel, replyChannel, message, distance
repeat
local localmoden = io.open("modemlocal.data", "r")
local remotemodem = io.open("modemremoto.data", "r")

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
repeat
local timerId = os.startTimer(1)
  event, side, channel, replyChannel, message, distance = os.pullEvent()
  if event == "timer" then
  print("")
  print("Remote Dialer not found")
  print("")
    break
  end
  
until channel == tonumber(local1)
  if event == "timer" then
    break
  end
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
  if event == "timer" then
    mess1 = "exit"
  end
    if event ~= "timer" then
print("")
print("Write again \"exit\" to close the program")
  end

    end

    end
 end
 until mess1 == "exit"
 if event == "timer" then
shell.run("stargateremote.lua")
  end

