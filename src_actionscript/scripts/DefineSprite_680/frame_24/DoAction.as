function onEnterFrame()
{
   if(_parent._parent._parent.st != 1)
   {
      if(_parent._parent._xscale == 100)
      {
         _parent._parent._x += 20;
      }
      else
      {
         _parent._parent._x -= 20;
      }
   }
}
mc1 = _parent._parent._parent.attachMovie("yan","yan" + _parent._parent._parent.yanshu,_parent._parent._parent.yanshu);
mc1._x = _parent._parent._x;
mc1._y = _parent._parent._y;
_parent._parent._parent.yanshu += 1;
mc1._xscale = - _parent._parent._xscale;
