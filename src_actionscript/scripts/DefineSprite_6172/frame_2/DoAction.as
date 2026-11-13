function onEnterFrame()
{
   if(this._x < _parent.b1._x - 50 or this._x > _parent.b2.x + 50)
   {
      gotoAndStop(1);
      delete this.onEnterFrame;
   }
   if(this._currentframe == 2)
   {
      if(_parent.st != 1)
      {
         if(this._xscale == 100)
         {
            this._x += sd;
         }
         else
         {
            this._x -= sd;
         }
      }
   }
}
sd = 15;
