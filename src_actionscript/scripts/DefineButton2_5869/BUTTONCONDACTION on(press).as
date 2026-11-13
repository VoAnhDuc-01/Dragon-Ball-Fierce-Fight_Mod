on(press){
   if(vs != 1)
   {
      hei_mc.gotoAndPlay(2);
      gotoAndStop("map");
   }
   if(vs == 1)
   {
      hei_mc.gotoAndPlay(2);
      gotoAndStop("play");
   }
   if(vs == 2)
   {
      hei_mc.gotoAndPlay(2);
      gotoAndStop("vs");
   }
}
