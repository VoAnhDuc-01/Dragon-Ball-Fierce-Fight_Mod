on(press){
   if(_parent.tongguan >= 21)
   {
      _parent.guanshu = 21;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
