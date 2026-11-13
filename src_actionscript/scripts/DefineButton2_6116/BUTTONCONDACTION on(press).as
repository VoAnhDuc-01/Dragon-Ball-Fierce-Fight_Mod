on(press){
   if(_parent.tongguan >= 30)
   {
      _parent.guanshu = 30;
      _parent.hei_mc.gotoAndPlay(2);
      _parent.gotoAndStop("play");
   }
}
