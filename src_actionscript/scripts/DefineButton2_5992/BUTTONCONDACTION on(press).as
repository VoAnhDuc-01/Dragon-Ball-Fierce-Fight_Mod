on(press){
   if(_parent.tongguan >= 5)
   {
      _parent.guanshu = 5;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
