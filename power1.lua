ic = peripheral.wrap("left");
mo = peripheral.wrap("right");

function loop()

stored = ic.getEUStored();
total = ic.getEUCapacity();
perc = math.floor(stored/total*100);

mo.transmit(3,99,perc);
sleep(10);

end

while true do loop(); end