function onEnterFrame()
{
   p1t = map.p1t;
   p2t = map.p2t;
}
function mapmap()
{
   xdistance = Math.abs(map.biao1._x - map.biao2._x) + 180;
   ydistance = Math.abs(map.biao1._y - map.biao2._y) + yss;
   target_centralx = (map.biao1._x + map.biao2._x) / 2;
   target_centraly = (map.biao1._y + map.biao2._y) / 2;
   if(xdistance * 700 / 1200 > ydistance)
   {
      mainsc = 1200 / xdistance;
   }
   else
   {
      mainsc = 700 / ydistance;
   }
   if(mainsc < 1)
   {
      mainsc = 1;
   }
   else if(mainsc > 2)
   {
      mainsc = 2;
   }
   targetx = 550 - target_centralx * mainsc;
   targety = 600 - target_centraly * mainsc;
   if(1200 * mainsc + targetx < 1200)
   {
      targetx = 1200 - 1200 * mainsc;
   }
   if(700 * mainsc + targety < 700)
   {
      targety = 700 - 700 * mainsc;
   }
   if(targetx > 0)
   {
      targetx = 0;
   }
   if(targety > 0)
   {
      targety = 0;
   }
   map._xscale = (mainsc * 100 + map._xscale) / 3;
   map._yscale = map._xscale;
   map._x = (map._x + targetx) / 3;
   map._y = (map._y + targety) / 3;
}
var dong1 = setInterval(mapmap,10);
