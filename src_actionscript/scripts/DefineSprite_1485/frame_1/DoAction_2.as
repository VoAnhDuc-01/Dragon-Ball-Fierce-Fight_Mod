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
      if(this._currentframe == 23)
      {
         if(this._parent._y > mc1._y - 30 && this._parent._y < mc1._y + 80 && this.ren._currentframe > 14)
         {
            this.gotoAndStop("daxia");
         }
      }
      if(this._currentframe == 23 or this._currentframe == 24)
      {
         if(this._parent._x < mc1._x - 50)
         {
            this._parent._x += 12;
         }
         if(this._parent._x > mc1._x + 50)
         {
            this._parent._x -= 12;
         }
      }
      if(this.ren.lian == 1)
      {
         this.nextFrame();
      }
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(mc1.ren._currentframe == 4 or mc1.ren._currentframe == 5 or mc1.ren._currentframe == 6 or mc1.ren._currentframe >= 8)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s3 = random(44);
            }
            else
            {
               s3 = random(33);
            }
            if(s3 == 5)
            {
               if(this._parent._xscale == 100)
               {
                  this.sd1 = 22;
               }
               else
               {
                  this.sd2 = 22;
               }
               this.gotoAndStop("tiao");
            }
         }
      }
      if(this._currentframe == 1 or this._currentframe == 2)
      {
         if(_parent._x < mc1._x)
         {
            _parent._xscale = 100;
         }
         else
         {
            _parent._xscale = -100;
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
               s1 = random(77);
            }
            else
            {
               s1 = random(44);
            }
            if(s1 == 5)
            {
               if(_parent._x < mc1._x)
               {
                  _parent._xscale = 100;
               }
               else
               {
                  _parent._xscale = -100;
               }
               gotoAndStop("da1");
            }
         }
         if(_parent._x > mc1._x - 170 && _parent._x < mc1._x + 170)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s2 = random(88);
            }
            else
            {
               s2 = random(55);
            }
            if(s2 == 5)
            {
               if(_parent._x < mc1._x)
               {
                  _parent._xscale = 100;
               }
               else
               {
                  _parent._xscale = -100;
               }
               gotoAndStop("t2");
            }
         }
         if(_parent._x > mc1._x - 870 && _parent._x < mc1._x + 870)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s4 = random(390);
            }
            else
            {
               s4 = random(160);
            }
            if(s4 == 5)
            {
               if(_parent._x < mc1._x)
               {
                  _parent._xscale = 100;
               }
               else
               {
                  _parent._xscale = -100;
               }
               gotoAndStop("bi2");
            }
         }
         if(_parent._x > mc1._x - 170 && _parent._x < mc1._x + 170)
         {
            if(_parent._parent._parent.nandu == 1)
            {
               s5 = random(90);
            }
            else
            {
               s5 = random(60);
            }
            if(s5 == 5)
            {
               if(_parent._x < mc1._x)
               {
                  _parent._xscale = 100;
               }
               else
               {
                  _parent._xscale = -100;
               }
               gotoAndStop("zhao1");
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
