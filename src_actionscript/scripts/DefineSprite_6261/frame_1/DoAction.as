function onEnterFrame()
{
   if(_parent.guanshu == 1)
   {
      if(di1 == undefined)
      {
         mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b1._x;
         mc1._y = _parent.map.b1._y;
         _parent.chuguai += 1;
         di1 = 1;
      }
      if(di2 == undefined)
      {
         if(_parent.guaisi == 1)
         {
            _parent.sc();
            _parent.heiping.gotoAndPlay(1);
            _parent.zb();
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b2._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x + 90;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            di2 = 1;
         }
      }
      if(di3 == undefined)
      {
         if(_parent.guaisi == 4)
         {
            _parent.sc();
            _parent.heiping.gotoAndPlay(1);
            _parent.zb();
            mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b2._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x + 90;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            di3 = 1;
         }
      }
      if(di5 == undefined)
      {
         if(_parent.guaisi == 7)
         {
            _parent.sc();
            _parent.heiping.gotoAndPlay(1);
            _parent.zb();
            mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b2._x;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x + 90;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            mc1 = _parent.map.attachMovie("guai1","guai" + _parent.chuguai,_parent.chuguai);
            mc1._x = _parent.map.b1._x + 90;
            mc1._y = _parent.map.b1._y;
            _parent.chuguai += 1;
            di5 = 1;
         }
      }
      if(di4 == undefined)
      {
         if(_parent.guaisi == 11)
         {
            _parent.win_mc.play();
            di4 = 1;
         }
      }
   }
}
