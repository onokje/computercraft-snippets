mon = peripheral.wrap("top");
mo = peripheral.wrap("right");

mo.open(1);
mon.clear();
mon.setCursorPos(24	,1);
mon.write("POWER LEVELS");
mon.setCursorPos(1,3);
mon.write("Waiting for data...");

function upd(channel,value)

mon.setCursorPos(1,channel+2);
mon.write("Zone "..channel..": "..value.."%  ");

end

function loop
local event, modemSide, senderChannel, replyChannel, message, senderDistance = os.pullEvent("modem_message");
print(senderChannel,message);
upd(senderChannel,message);

end