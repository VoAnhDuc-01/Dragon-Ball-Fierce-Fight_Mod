function hits2(mc1)
{
   if(this.ren.hit.hitTest(mc1.ren.hit))
   {
      mc1.ren.hp -= ren.hp;
      mc1._xscale = - _parent._xscale;
      mc1.ren.gotoAndStop("hit");
      mc1.ren.ren.gotoAndPlay(2);
      if(ren.hit.dao == 1)
      {
         mc1.ren.daohit.gotoAndPlay(2);
      }
      if(ren.hit.peng == 1)
      {
         mc1.ren.penghit.gotoAndPlay(2);
      }
      if(ren.hit.quan == 1)
      {
         mc1.ren.quanhit.gotoAndPlay(2);
      }
      mc1.ren.daqi_mc.gotoAndPlay(1);
      if(ren.hit.dating1 == 1)
      {
         _parent._parent._parent.xyz1.play();
         st_mc1.play();
         mc1.ren.st_mc1.play();
      }
      if(ren.hit.dating2 == 1)
      {
         _parent._parent._parent.xyz1.play();
         st_mc2.play();
         mc1.ren.st_mc2.play();
      }
      if(this._parent._x < mc1._x)
      {
         mc1.ren.sd2 = ren.hit.sd + random(8);
      }
      else
      {
         mc1.ren.sd1 = ren.hit.sd + random(8);
      }
      if(ren.hit.gaosd != undefined)
      {
         mc1.ren.gaosd = ren.hit.gaosd;
      }
      if(this.ren.hit.dagao == 1)
      {
         mc1.ren.gotoAndStop("dagao");
         this.ren.gotoAndPlay("z");
      }
      if(this.ren.hit.daxia == 1)
      {
         mc1.ren.gotoAndStop("diaoxia");
      }
      if(mthis.ren.hit.dating1 == 1)
      {
         st_mc1.play();
         mc1.ren.st_mc1.play();
         _parent._parent._parent.xyz1.play();
      }
      if(this.ren.hit.dating2 == 1)
      {
         st_mc2.play();
         mc1.ren.st_mc2.play();
         _parent._parent._parent.xyz1.play();
      }
      if(this.ren.hit.dating3 == 1)
      {
         st_mc3.play();
         mc1.ren.st_mc3.play();
         _parent._parent._parent.xyz1.play();
      }
   }
}
