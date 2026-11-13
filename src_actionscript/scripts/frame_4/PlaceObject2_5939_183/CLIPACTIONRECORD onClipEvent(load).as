onClipEvent(load){
   if(_parent.vs != 1)
   {
      this.gotoAndStop(_parent.player);
   }
   else
   {
      this.gotoAndStop(3);
   }
}
