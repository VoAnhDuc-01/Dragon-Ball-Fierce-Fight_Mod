on(press){
   if(_parent.tongguan >= 3)
   {
      _parent.guanshu = 3;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
