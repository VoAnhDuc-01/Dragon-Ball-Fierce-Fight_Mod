on(press){
   if(_parent.tongguan >= 18)
   {
      _parent.guanshu = 18;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
