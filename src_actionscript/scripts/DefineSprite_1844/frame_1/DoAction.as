function hits(mc1)
{
   if(this.hit.hitTest(_parent._parent.bo1))
   {
      if(this._currentframe != 15 && this._currentframe != 16)
      {
         this.gotoAndStop("hit");
      }
      penghit.gotoAndPlay(2);
      st_mc1.play();
      _parent._parent._parent.xyz1.play();
      _parent._parent.bo1.gotoAndStop(3);
      if(this._parent._x < mc1._x)
      {
         this.sd1 = 13 + random(8);
      }
      else
      {
         this.sd2 = 13 + random(8);
      }
      _parent._parent._parent.guaihp_mc.hp_mc2._xscale = hp / (zonghp / 100);
      gaosd = 9;
      hp -= 40;
      _parent._parent._parent.guaihp_mc.hp_mc._xscale = hp / (zonghp / 100);
   }
   if(this.hit.hitTest(_parent._parent.bo2))
   {
      if(this._currentframe != 15 && this._currentframe != 16)
      {
         this.gotoAndStop("hit");
      }
      penghit.gotoAndPlay(2);
      st_mc1.play();
      _parent._parent._parent.xyz1.play();
      _parent._parent.bo2.gotoAndStop(3);
      if(this._parent._x < mc1._x)
      {
         this.sd1 = 13 + random(8);
      }
      else
      {
         this.sd2 = 13 + random(8);
      }
      _parent._parent._parent.guaihp_mc.hp_mc2._xscale = hp / (zonghp / 100);
      gaosd = 9;
      hp -= 40;
      _parent._parent._parent.guaihp_mc.hp_mc._xscale = hp / (zonghp / 100);
   }
   if(this.hit.hitTest(mc1.ren.ren.xi))
   {
      gotoAndStop("xi");
      if(this._parent._y > mc1._y)
      {
         this._parent._y += 20;
      }
      else
      {
         this._parent._y = mc1._y;
      }
      if(mc1._xscale == 100)
      {
         if(this._parent._x > mc1._x + 50)
         {
            this._parent._x -= 35;
            this._parent._xscale = 100;
         }
         else
         {
            this._parent._x = mc1._x + 50;
         }
      }
      else if(this._parent._x < mc1._x - 50)
      {
         this._parent._x += 35;
         this._parent._xscale = -100;
      }
      else
      {
         this._parent._x = mc1._x - 50;
      }
   }
   if(this.hit.hitTest(mc1.ren.ren.hit))
   {
      _parent._parent._parent.guaihp_mc.hp_mc2._xscale = hp / (zonghp / 100);
      hp -= mc1.ren.ren.hp;
      _parent._parent._parent.guaihp_mc.hp_mc._xscale = hp / (zonghp / 100);
      mc1.ren.hsmc.play();
      _parent._xscale = mc1._xscale;
      this.gotoAndStop("hit");
      ren.gotoAndPlay(2);
      if(mc1.ren.ren.hit.dao == 1)
      {
         daohit.gotoAndPlay(2);
      }
      if(mc1.ren.ren.hit.peng == 1)
      {
         penghit.gotoAndPlay(2);
      }
      if(mc1.ren.ren.hit.quan == 1)
      {
         quanhit.gotoAndPlay(2);
      }
      daqi_mc.gotoAndPlay(1);
      if(mc1.ren.ren.hit.dating1 == 1)
      {
         st_mc1.play();
         mc1.ren.st_mc1.play();
         _parent._parent._parent.xyz1.play();
      }
      if(mc1.ren.ren.hit.dating2 == 1)
      {
         st_mc2.play();
         mc1.ren.st_mc2.play();
         _parent._parent._parent.xyz1.play();
      }
      if(mc1.ren.ren.hit.dating3 == 1)
      {
         st_mc3.play();
         mc1.ren.st_mc3.play();
         _parent._parent._parent.xyz1.play();
      }
      if(this._parent._x < mc1._x)
      {
         this.sd1 = mc1.ren.ren.hit.sd + random(8);
      }
      else
      {
         this.sd2 = mc1.ren.ren.hit.sd + random(8);
      }
      if(mc1.ren.ren.hit.gaosd != undefined)
      {
         gaosd = mc1.ren.ren.hit.gaosd;
      }
      if(mc1.ren.ren.jiaap == 1)
      {
         mc1.ren.qi += 2;
         if(mc1.ren.okqi < mc1.ren.qi)
         {
            mc1.ren.okqi += 2;
         }
      }
      if(mc1.ren.ren.hit.dagao == 1)
      {
         this.gotoAndStop("dagao");
         mc1.ren.ren.gotoAndPlay("z");
      }
      if(mc1.ren.ren.hit.daxia == 1)
      {
         this.gotoAndStop("diaoxia");
      }
   }
}
