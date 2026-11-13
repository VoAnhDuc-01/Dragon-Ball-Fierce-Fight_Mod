on(press){
   if(_parent.tongguan >= 10)
   {
      _parent.guanshu = 10;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
