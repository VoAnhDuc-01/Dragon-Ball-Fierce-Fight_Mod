function f1()
{
   c1 = random(8);
   c2 = random(4);
   c3 = random(4);
}
function ai(mc1)
{
   if(_parent._parent.candong != 0)
   {
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(c1 == 1 or c1 == 2)
         {
            if(_parent._x < mc1._x)
            {
               _parent._xscale = -100;
            }
            else
            {
               _parent._xscale = 100;
            }
            if(_parent._x < mc1._x - 180)
            {
               _parent._x += sd;
               gotoAndStop(2);
            }
            else if(_parent._x > mc1._x + 180)
            {
               gotoAndStop(2);
               _parent._x -= sd;
            }
         }
         else if(this._parent._x < mc1._x)
         {
            _parent._x -= sd;
            _parent._xscale = 100;
         }
         else
         {
            _parent._xscale = -100;
            _parent._x += sd;
         }
         if(_parent._x > mc1._x - 90 && _parent._x < mc1._x + 90)
         {
            s1 = random(90);
            if(s1 == 5)
            {
            }
         }
         if(_parent._x > mc1._x - 900 && _parent._x < mc1._x + 900)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s2 = random(500);
            }
            else
            {
               s2 = random(200);
            }
            if(s2 == 5)
            {
               if(_parent._x < mc1._x)
               {
                  _parent._xscale = -100;
               }
               else
               {
                  _parent._xscale = 100;
               }
               gotoAndStop("da1");
            }
         }
      }
   }
}
sd = 4;
ji1 = setInterval(f1,5000);
c1 = 1;
c2 = 1;
c3 = 1;
