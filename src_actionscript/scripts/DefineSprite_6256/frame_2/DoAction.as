onEnterFrame = function()
{
   if(_parent.player == 1)
   {
      if(_parent.map.hero1.ren.bok == 0)
      {
         stop();
         _parent.map.st = 1;
      }
      else
      {
         play();
      }
   }
   else if((_parent.map.hero1.ren.bok == undefined or _parent.map.hero1.ren.bok == 1) && (_parent.map.hero2.ren.bok == undefined or _parent.map.hero2.ren.bok == 1))
   {
      play();
   }
   else
   {
      stop();
      _parent.map.st = 1;
   }
};
