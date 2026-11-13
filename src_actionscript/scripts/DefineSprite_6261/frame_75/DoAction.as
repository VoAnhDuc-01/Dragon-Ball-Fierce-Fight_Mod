function onEnterFrame()
{
   if(_parent.yanshi == 1)
   {
      if(xs != 1)
      {
         if(_parent.map.hero1.ren.qi < 60)
         {
            if(_parent.map.hero1._y < _parent.map.b1._y)
            {
               _parent.map.hero1._y += 12;
            }
            else
            {
               xs = 1;
            }
         }
      }
      if(di1 == undefined)
      {
         mc1 = _parent.map.attachMovie("bll","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b4._x + 330;
         mc1._y = _parent.map.b1._y;
         mc1._xscale = -100;
         _parent.chuguai += 1;
         di1 = 1;
      }
      if(_parent.ys_mc._currentframe == 41)
      {
         if(feihao != 1 && _parent.map.hero1.ren.bok == 1)
         {
            if(mc1.fei == true && mc1.ren.fei_mc._currentframe == 1)
            {
               feihao = 1;
            }
            feihao = 1;
         }
         if(f < 4 && feihao == 1)
         {
            if(_parent.map.hero1.ren.okqi < _parent.map.hero1.ren.qi)
            {
               if(_parent.map.hero1.ren._currentframe == 1)
               {
                  if(_parent.map.hero1.ren.cy_mc._currentframe == 46)
                  {
                     _parent.map.hero1.ren.gotoAndStop("qi");
                  }
               }
            }
            else if(f == 1)
            {
               _parent.map.hero1.ren.gotoAndStop("bi3");
               _parent.map.hero1.ren.okqi = 0;
               _parent.map.hero1.ren.qi = 66;
               f = 2;
            }
            else if(f == 2)
            {
               _parent.map.hero1.ren.gotoAndStop("bi2");
               _parent.map.hero1.ren.okqi = 0;
               _parent.map.hero1.ren.qi = 33;
               f = 3;
            }
            else if(f == 3)
            {
               _parent.map.hero1.ren.gotoAndStop("bi1");
               _parent.map.hero1.ren.okqi = 0;
               _parent.map.hero1.ren.qi = 0;
               f = 4;
               _parent.map.guai0._xscale == 100;
            }
         }
         if(f == 4)
         {
            if(_parent.map.hero1._x < _parent.map.guai0._x - 140)
            {
               if(_parent.map.guai0.ren._currentframe == 1 && _parent.map.hero1.ren._currentframe == 1)
               {
                  _parent.map.hero1.ren.gotoAndStop("chong");
               }
               if(_parent.map.hero1._x > _parent.map.guai0._x - 145)
               {
                  _parent.map.hero1._x = _parent.map.guai0._x - 100;
                  _parent.map.hero1.ren.gotoAndStop("chongda");
               }
            }
            else if(_parent.map.hero1.ren._currentframe == 1)
            {
               f = 5;
            }
         }
         if(f == 5)
         {
            _parent.map.hero1._x = _parent.map.guai0._x - 100;
            _parent.map.hero1.ren.gotoAndStop("t2");
            f = 6;
         }
         if(f == 6)
         {
            if(_parent.map.hero1.ren.daqi_mc.tiaosd < 30)
            {
               if(_parent.map.hero1._x > _parent.map.guai0._x + 30)
               {
                  _parent.map.hero1._x -= 8;
               }
               else if(_parent.map.hero1._x < _parent.map.guai0._x - 30)
               {
                  _parent.map.hero1._x += 8;
               }
            }
            if(_parent.map.hero1.ren.daqi_mc.tiaosd < 24)
            {
               _parent.map.guai0.ren.hp = 26;
               _parent.map.hero1.ren.gotoAndStop("daxia");
               if(_parent.map.hero1._x > _parent.map.guai0._x + 30)
               {
                  _parent.map.hero1._x -= 8;
               }
               else if(_parent.map.hero1._x < _parent.map.guai0._x - 30)
               {
                  _parent.map.hero1._x += 8;
               }
               f = 7;
            }
         }
         if(f == 7)
         {
            if(_parent.map.hero1._x > _parent.map.guai0._x - 80)
            {
               _parent.map.hero1._x -= 8;
            }
            if(_parent.map.hero1.ren.ren.lian == 1)
            {
               _parent.map.hero1.ren.nextFrame();
            }
            if(_parent.map.hero1.ren._currentframe == 1)
            {
               f = 8;
            }
         }
      }
      if(f == 8)
      {
         if(_parent.map.hero1.ren._currentframe == 1)
         {
            _parent.ysok_mc.play();
            f = 13;
         }
      }
   }
}
f = 1;
