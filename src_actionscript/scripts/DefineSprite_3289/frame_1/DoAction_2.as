function f1()
{
   c1 = random(12);
   c2 = random(4);
   c3 = random(4);
}
function ai(mc1)
{
   if(_parent._parent.candong != 0)
   {
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(c1 != 1 && c1 != 2)
         {
            if(_parent._x < mc1._x)
            {
               _parent._xscale = -100;
            }
            else
            {
               _parent._xscale = 100;
            }
            if(_parent._x < mc1._x - 130)
            {
               _parent._x += sd;
               gotoAndStop(2);
            }
            else if(_parent._x > mc1._x + 130)
            {
               gotoAndStop(2);
               _parent._x -= sd;
            }
         }
         else
         {
            gotoAndStop(2);
            if(this._parent._x < mc1._x)
            {
               _parent._x -= sd;
               _parent._xscale = 100;
            }
            else
            {
               _parent._xscale = -100;
               _parent._x += sd;
            }
         }
         if(_parent._x > mc1._x - 210 && _parent._x < mc1._x + 210)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s1 = random(80);
            }
            else
            {
               s1 = random(20);
            }
            if(s1 == 5)
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
sd = 6;
ji1 = setInterval(f1,5000);
c1 = 1;
c2 = 1;
c3 = 1;
