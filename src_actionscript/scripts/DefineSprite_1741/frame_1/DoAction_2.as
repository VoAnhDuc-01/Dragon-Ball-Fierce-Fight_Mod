function f1()
{
   c1 = random(12);
   c2 = random(4);
   c3 = random(4);
   c4 = random(4);
}
function ai(mc1)
{
   if(_parent._parent.candong != 0)
   {
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(mc1.ren._currentframe > 2)
         {
            s3 = random(10);
            if(s3 == 5)
            {
               this.gotoAndStop("tiao");
            }
         }
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
         if(_parent._x > mc1._x - 210 && _parent._x < mc1._x + 210)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s1 = random(55);
            }
            else
            {
               s1 = random(15);
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
         if(_parent._x > mc1._x - 270 && _parent._x < mc1._x + 270)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s2 = random(60);
            }
            else
            {
               s2 = random(30);
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
               gotoAndStop("da2");
            }
         }
      }
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(mc1.ren._currentframe == 4 or mc1.ren._currentframe == 5 or mc1.ren._currentframe == 6 or mc1.ren._currentframe >= 8)
         {
            s3 = random(80);
            if(s3 == 5)
            {
               this.gotoAndStop("tiao");
            }
         }
      }
   }
}
sd = 12;
ji1 = setInterval(f1,5000);
c1 = 1;
c2 = 1;
c3 = 1;
