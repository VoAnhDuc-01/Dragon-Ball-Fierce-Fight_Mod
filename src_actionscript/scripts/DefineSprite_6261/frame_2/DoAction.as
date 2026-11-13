function onEnterFrame()
{
   if(_parent.guanshu == 2)
   {
      if(di1 == undefined)
      {
         mc1 = _parent.map.attachMovie("boss1","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b2._x;
         mc1._y = _parent.map.b2._y;
         _parent.chuguai += 1;
         mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b2._x;
         mc1._y = _parent.map.b2._y;
         _parent.chuguai += 1;
         mc1 = _parent.map.attachMovie("guai2","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b2._x;
         mc1._y = _parent.map.b2._y;
         _parent.chuguai += 1;
         di1 = 1;
      }
      if(di4 == undefined)
      {
         if(_parent.guaisi == 3)
         {
            _parent.win_mc.play();
            di4 = 1;
         }
      }
   }
}
