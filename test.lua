// Inventory Program

print("Inventory program running");
me = peripheral.wrap("bottom");
m = peripheral.wrap("left");

function row(rownr,colnr,name,value)
pos = 1;
if colnr == 1 then pos = 1 else pos = 30 end
m.setCursorPos(pos,rownr);
m.write(name);
m.setCursorPos(pos+15,rownr);
m.write(value);
end

function itemrow(rownr,colnr,id,id2,name)
local value = me.countOfItemType(id,id2);
value = tostring(value);
row(rownr,colnr,name,value);
end

function loop()
m.clear();
m.setCursorPos(23,1);
m.write("ONOK'S INVENTORY");
itemrow(3,1,331,0,"Redstone");
itemrow(4,1,348,0,"Glowstone");
itemrow(5,1,264,0,"Diamond");
itemrow(6,1,265,0,"Iron");
itemrow(7,1,30067,0,"Copper");
itemrow(8,1,30067,1,"Tin");
itemrow(9,1,31976,0,"Fertilizer");
itemrow(10,1,31975,0,"Apatite");
itemrow(11,1,351,4,"Lapis lazuli");
itemrow(12,1,30139,0,"Scrap box");
itemrow(13,1,30189,0,"Scrap");
itemrow(14,1,263,0,"Coal");

itemrow(3,2,8525,0,"Essense dust");

sleep(10);
end

while true do loop(); end