on(press){
   if(_parent.tongguan >= 31)
   {
      _parent.guanshu = 31;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
