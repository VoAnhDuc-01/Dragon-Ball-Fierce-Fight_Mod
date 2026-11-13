function onEnterFrame()
{
   st_f(hero1.ren);
   _parent.qi_mc1.qi_mc._xscale = hero1.ren.qi;
   _parent.qi_mc1.okqi_mc._xscale = hero1.ren.okqi;
   _parent.qi_mc2.qi_mc._xscale = hero2.ren.qi;
   _parent.qi_mc2.okqi_mc._xscale = hero2.ren.okqi;
   if(hero1.ren.hp <= 0 && hero2.ren.hp <= 0)
   {
      _parent.go_mc.play();
   }
   _parent.hp_mc1.hp_mc._xscale = hero1.ren.hp / (hero1.ren.zonghp / 100);
   _parent.hp_mc1.ap_mc._xscale = hero1.ren.ap;
   if(_parent.hp_mc1.hp_mc2._xscale > _parent.hp_mc1.hp_mc._xscale)
   {
      _parent.hp_mc1.hp_mc2._xscale -= (_parent.hp_mc1.hp_mc2._xscale - _parent.hp_mc1.hp_mc._xscale) / 6;
   }
   if(st != 1)
   {
      dongzuo(hero1,hero2,aj2,dj2,wj2,sj2,Aj,Bj,Cj,Dj,Ej,Fj,_parent.zhao_mc1,p1t,bo1);
   }
   if(player == 2)
   {
      if(hero1._xscale == 100)
      {
         hero1.p_mc.gotoAndStop(2);
      }
      else
      {
         hero1.p_mc.gotoAndStop(3);
      }
      if(hero2._xscale == 100)
      {
         hero2.p_mc.gotoAndStop(4);
      }
      else
      {
         hero2.p_mc.gotoAndStop(5);
      }
      _parent.hp_mc2.hp_mc._xscale = hero2.ren.hp / (hero2.ren.zonghp / 100);
      _parent.hp_mc2.ap_mc._xscale = hero2.ren.ap;
      if(_parent.hp_mc2.hp_mc2._xscale > _parent.hp_mc2.hp_mc._xscale)
      {
         _parent.hp_mc2.hp_mc2._xscale -= (_parent.hp_mc2.hp_mc2._xscale - _parent.hp_mc2.hp_mc._xscale) / 6;
      }
      if(st != 1)
      {
         if(_parent.vs != 2)
         {
            dongzuo(hero2,hero1,zuoj,youj,shangj,xiaj,Aj2,Bj2,Cj2,Dj2,Ej2,Fj2,_parent.zhao_mc2,p2t,bo2);
         }
      }
      if(_parent.vs != 2)
      {
         st_f(hero2.ren);
      }
   }
   else
   {
      hero2.ren.hp = 0;
   }
   biaowz();
   anjian();
   if(hero1.ren._currentframe == 8)
   {
      p1t = "";
      jip1t = 0;
   }
   else if(hero1.ren.ren.onEnterFrame != undefined)
   {
      delete hero1.ren.ren.onEnterFrame;
   }
   if(hero2.ren._currentframe == 8)
   {
      p2t = "";
      jip2t = 0;
   }
   else if(hero2.ren.ren.onEnterFrame != undefined)
   {
      delete hero2.ren.ren.onEnterFrame;
   }
   if(BJ == true)
   {
   }
   if(_parent.guaihp_mc.hp_mc2._xscale > _parent.guaihp_mc.hp_mc._xscale)
   {
      _parent.guaihp_mc.hp_mc2._xscale -= (_parent.guaihp_mc.hp_mc2._xscale - _parent.guaihp_mc.hp_mc._xscale) / 8;
   }
}
function biaowz()
{
   var _loc7_;
   var _loc5_;
   var _loc6_;
   var _loc4_;
   var _loc11_;
   var _loc9_;
   var _loc10_;
   var _loc8_;
   if(candong == 1 or _parent.ys_mc._currentframe == 41)
   {
      xbay = [];
      ybay = [];
      for(var _loc3_ in this)
      {
         if(this[_loc3_].biao == true)
         {
            xbay.push(this[_loc3_] + ":" + this[_loc3_]._x);
            ybay.push(this[_loc3_] + ":" + this[_loc3_]._y);
         }
      }
      xbay.sort(order);
      ybay.sort(order);
      _loc7_ = xbay[0].split(":")[0];
      _loc5_ = xbay[xbay.length - 1].split(":")[0];
      _loc6_ = ybay[0].split(":")[0];
      _loc4_ = ybay[ybay.length - 1].split(":")[0];
      biao1._x = _loc7_;
      biao1._y = _loc5_ - 100;
      biao2._x = _loc6_;
      biao2._y = _loc4_ - 100;
      _loc11_ = _loc7_.split(".")[2];
      _loc9_ = _loc5_.split(".")[2];
      _loc10_ = _loc6_.split(".")[2];
      _loc8_ = _loc4_.split(".")[2];
      biao1._x = this[_loc11_]._x;
      biao2._x = this[_loc9_]._x;
      biao1._y = this[_loc10_]._y;
      biao2._y = this[_loc8_]._y;
   }
   else if(player == 1)
   {
      if(fd > 0)
      {
         biao1._x = hero1._x - ss1;
         biao1._y = hero1._y;
         biao2._x = hero1._x + ss1;
         _parent.yshu = 360;
         ff3 = 1;
         fd -= 0.1;
         if(ss1 < 350)
         {
            ss1 += 9;
         }
      }
      else if(ff3 == 1)
      {
         biao1._x = hero1._x - ss1;
         biao1._y = hero1._y;
         biao2._x = hero1._x + ss1;
         _parent.yshu = 360;
         if(_parent.yanshi != 1)
         {
            if(_parent.st_mc._currentframe == 1)
            {
               _parent.st_mc.play();
            }
         }
         else if(_parent.ys_mc._currentframe == 1)
         {
            _parent.ys_mc.play();
         }
         if(ss1 > 150)
         {
            ss1 -= 9;
         }
         else
         {
            ff3 = 0;
         }
      }
      hero2._visible = false;
      hero2.biao = false;
   }
   else
   {
      if(fd > 0)
      {
         biao1._x = hero1._x - ss1;
         biao1._y = hero1._y;
         biao2._x = hero2._x + ss1;
         _parent.yshu = 360;
         ff3 = 1;
         fd -= 0.1;
         if(ss1 < 320)
         {
            ss1 += 9;
         }
      }
      else if(ff3 == 1)
      {
         biao1._x = hero1._x - ss1;
         biao1._y = hero1._y;
         biao2._x = hero2._x + ss1;
         _parent.yshu = 360;
         if(_parent.st_mc._currentframe == 1)
         {
            _parent.st_mc.play();
         }
         if(ss1 > 100)
         {
            ss1 -= 9;
         }
         else
         {
            ff3 = 0;
         }
      }
      _parent.yshu = 300;
   }
}
sd = 12;
player = _parent.player;
st = 0;
fang = 0;
ting = 0;
candong = 0;
fd = 3;
ss1 = 200;
yanshu = 300;
zidanshu = 1000;
xbay = [];
ybay = [];
hero2._xscale = -100;
hero1._y = b1._y;
hero2._y = b1._y;
if(player == 1)
{
   biao1._x = hero1._x - ss1;
   biao1._y = hero1._y;
   biao2._x = hero1._x + ss1;
   _parent.zhao_mc2._visible = false;
   _parent.hp_mc2._visible = false;
   _parent.t2._visible = false;
   _parent.wu._visible = false;
   _parent.qi_mc2._visible = false;
}
else
{
   biao1._x = hero1._x - 100;
   biao1._y = hero1._y;
   biao2._x = hero2._x + 100;
   biao2._y = hero2._y;
}
