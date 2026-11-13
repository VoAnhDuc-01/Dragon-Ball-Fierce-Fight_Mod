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
         if(_parent._parent._y >= _parent._parent._parent.b1._y)
         {
            _parent._parent._y = _parent._parent._parent.b1._y;
            this._parent._parent.yz._y = 0;
            _parent.ren.gotoAndPlay("daodi");
            gotoAndStop(1);
            delete this.onEnterFrame;
         }
      }
   }
}
stop();
tiaosd += _parent.gaosd;
_parent.gaosd = 0;
