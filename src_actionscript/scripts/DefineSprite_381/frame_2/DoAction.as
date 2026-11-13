function onEnterFrame()
{
   if(_parent.st != 1 && _parent._parent._parent.st != 1)
   {
      tiaosd -= 2;
      this._parent._parent._y -= tiaosd;
      this._parent._parent.yz._y += tiaosd / 2;
      this._parent._parent.yz._y += tiaosd;
      if(tiaosd <= 0)
      {
         delete this.onEnterFrame;
         gotoAndStop(1);
      }
   }
}
if(_parent._parent._y > _parent._parent._parent.b1._y - 10 && _parent._parent._y < _parent._parent._parent.b1._y + 10)
{
   mc1 = _parent._parent._parent.attachMovie("yan","yan" + _parent._parent._parent.yanshu,_parent._parent._parent.yanshu);
   mc1._x = _parent._parent._x;
   mc1._y = _parent._parent._y;
   _parent._parent._parent.yanshu += 1;
   mc1._xscale = -100;
   mc1 = _parent._parent._parent.attachMovie("yan","yan" + _parent._parent._parent.yanshu,_parent._parent._parent.yanshu);
   mc1._x = _parent._parent._x;
   mc1._y = _parent._parent._y;
   _parent._parent._parent.yanshu += 1;
   mc1._xscale = 100;
}
stop();
