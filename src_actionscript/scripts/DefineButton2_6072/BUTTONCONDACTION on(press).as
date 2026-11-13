on(press){
   if(_parent.tongguan >= 15)
   {
      _parent.guanshu = 15;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
