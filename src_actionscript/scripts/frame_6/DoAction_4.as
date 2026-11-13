if(vs < 1)
{
   if(guanshu2 == 0)
   {
      map.map.gotoAndStop(guanshu);
   }
   else
   {
      map.map.gotoAndStop(104 + guanshu2);
   }
}
else
{
   map.map.gotoAndStop(random(8));
}
