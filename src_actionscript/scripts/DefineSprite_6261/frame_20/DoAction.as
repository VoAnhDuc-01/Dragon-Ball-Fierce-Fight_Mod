function onEnterFrame()
{
   if(_parent.guanshu == 20)
   {
      if(di1 == undefined)
      {
         mc1 = _parent.map.attachMovie("tjf","guai" + _parent.chuguai,_parent.chuguai);
         mc1._x = _parent.map.b2._x;
         mc1._y = _parent.map.b2._y;
         _parent.chuguai += 1;
         di1 = 1;
      }
      if(di4 == undefined)
      {
         if(_parent.guaisi == 1)
         {
            _parent.win_mc.play();
            di4 = 1;
         }
      }
   }
}
