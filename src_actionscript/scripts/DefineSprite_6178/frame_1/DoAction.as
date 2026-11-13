function hits(mc1, mc2)
{
   if(mc2._parent._y > b1._y)
   {
      mc2._parent._y = b1._y;
   }
   if(mc1.ren._currentframe == 7 or mc2._currentframe == 7)
   {
      if(mc2._parent._x < mc1._x)
      {
         while(mc2.hit.hitTest(mc1.ren.hit))
         {
            mc2._parent._x--;
            mc1._x = mc1._x + 1;
         }
      }
      else
      {
         while(mc2.hit.hitTest(mc1.ren.hit))
         {
            mc2._parent._x++;
            mc1._x = mc1._x - 1;
         }
      }
   }
   if(mc2._parent._target != "/map/hero1")
   {
      if(mc2.hit.hitTest(bo1))
      {
         if(mc2._currentframe != 15 && mc2._currentframe != 16)
         {
            mc2.gotoAndStop("hit");
         }
         mc2.penghit.gotoAndPlay(2);
         mc2.st_mc1.play();
         _parent.xyz1.play();
         bo1.gotoAndStop(3);
         if(mc2._parent._x < mc1._x)
         {
            mc2.sd1 = 13 + random(8);
         }
         else
         {
            mc2.sd2 = 13 + random(8);
         }
         _parent.guaihp_mc.hp_mc2._xscale = mc2.hp / (mc2.zonghp / 100);
         mc2.gaosd = 9;
         mc2.hp -= 40;
         _parent.guaihp_mc.hp_mc._xscale = mc2.hp / (mc2.zonghp / 100);
      }
   }
   if(mc2._parent._target != "/map/hero2")
   {
      if(mc2.hit.hitTest(bo2))
      {
         if(mc2._currentframe != 15 && mc2._currentframe != 16)
         {
            mc2.gotoAndStop("hit");
         }
         mc2.penghit.gotoAndPlay(2);
         mc2.st_mc1.play();
         _parent.xyz1.play();
         bo2.gotoAndStop(3);
         if(mc2._parent._x < mc1._x)
         {
            mc2.sd1 = 13 + random(8);
         }
         else
         {
            mc2.sd2 = 13 + random(8);
         }
         _parent.guaihp_mc.hp_mc2._xscale = mc2.hp / (mc2.zonghp / 100);
         mc2.gaosd = 9;
         mc2.hp -= 40;
         _parent.guaihp_mc.hp_mc._xscale = mc2.hp / (mc2.zonghp / 100);
      }
   }
   if(mc2.hit.hitTest(mc1.ren.ren.xi))
   {
      gotoAndStop("xi");
      if(mc2._parent._y > mc1._y)
      {
         mc2._parent._y += 20;
      }
      else
      {
         mc2._parent._y = mc1._y;
      }
      if(mc1._xscale == 100)
      {
         if(mc2._parent._x > mc1._x + 50)
         {
            mc2._parent._x -= 35;
            mc2._parent._xscale = 100;
         }
         else
         {
            mc2._parent._x = mc1._x + 50;
         }
      }
      else if(mc2._parent._x < mc1._x - 50)
      {
         mc2._parent._x += 35;
         mc2._parent._xscale = -100;
      }
      else
      {
         mc2._parent._x = mc1._x - 50;
      }
   }
   if(mc2.hit.hitTest(mc1.ren.ren.hit))
   {
      if(mc2._currentframe != 15)
      {
         _parent.guaihp_mc.hp_mc2._xscale = mc2.hp / (mc2.zonghp / 100);
         mc2.hp -= mc1.ren.ren.hp;
         _parent.guaihp_mc.hp_mc._xscale = mc2.hp / (mc2.zonghp / 100);
         mc1.ren.hsmc.play();
         mc2._parent._xscale = mc1._xscale;
         mc2.gotoAndStop("hit");
         mc2.ren.gotoAndPlay(2);
         if(mc1.ren.ren.hit.dao == 1)
         {
            mc2.daohit.gotoAndPlay(2);
         }
         if(mc1.ren.ren.hit.peng == 1)
         {
            mc2.penghit.gotoAndPlay(2);
         }
         if(mc1.ren.ren.hit.quan == 1)
         {
            mc2.quanhit.gotoAndPlay(2);
         }
         mc2.daqi_mc.gotoAndPlay(1);
         if(mc1.ren.ren.hit.dating1 == 1)
         {
            mc2.st_mc1.play();
            mc1.ren.st_mc1.play();
            _parent.xyz1.play();
         }
         if(mc1.ren.ren.hit.dating2 == 1)
         {
            mc2.st_mc2.play();
            mc1.ren.st_mc2.play();
            _parent.xyz1.play();
         }
         if(mc1.ren.ren.hit.dating3 == 1)
         {
            mc2.st_mc3.play();
            mc1.ren.st_mc3.play();
            _parent.xyz1.play();
         }
         if(mc2._parent._x < mc1._x)
         {
            mc2.sd1 = mc1.ren.ren.hit.sd + random(8);
         }
         else
         {
            mc2.sd2 = mc1.ren.ren.hit.sd + random(8);
         }
         if(mc1.ren.ren.hit.mc2.gaosd != undefined)
         {
            mc2.gaosd = mc1.ren.ren.hit.mc2.gaosd;
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
            if(mc2._currentframe != 15)
            {
               mc2.gotoAndStop("dagao");
               mc1.ren.ren.gotoAndPlay("z");
            }
         }
         if(mc1.ren.ren.hit.daxia == 1)
         {
            mc2.gotoAndStop("diaoxia");
         }
      }
   }
}
