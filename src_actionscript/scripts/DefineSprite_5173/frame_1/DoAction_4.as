function onEnterFrame()
{
   if(_parent._parent._parent.vs >= 1)
   {
      if(_parent._target == "/map/hero1")
      {
         _parent._parent.hits(_parent._parent.hero2,this);
         hits2(_parent._parent.hero2);
      }
      if(_parent._target == "/map/hero2")
      {
         _parent._parent.hits(_parent._parent.hero1,this);
         hits2(_parent._parent.hero1);
      }
   }
   if(_parent.zj != 1)
   {
      if(hp <= 0)
      {
         if(_parent._parent.sst_mc._currentframe == 1)
         {
            _parent._parent.sst_mc.play();
         }
         if(this._currentframe != 15 && this._currentframe != 16)
         {
            gotoAndStop("si");
         }
      }
      _parent._parent.st_f(this);
      if(st != 1 && _parent._parent.st != 1)
      {
         if(Math.abs(_parent._parent.hero1._x - this._parent._x) < Math.abs(_parent._parent.hero2._x - this._parent._x) + 100)
         {
            if(_parent._parent.hero1.ren.hp > 0 && _parent._parent.hero1._x > _parent._parent.hero2._x)
            {
               ai(_parent._parent.hero1);
            }
            else if(_parent._parent.hero2.ren.hp > 0)
            {
               ai(_parent._parent.hero2);
            }
            else
            {
               ai(_parent._parent.hero1);
            }
         }
         else if(_parent._parent.hero2.ren.hp > 0 && _parent._parent.hero2._x > _parent._parent.hero1._x)
         {
            ai(_parent._parent.hero2);
         }
         else if(_parent._parent.hero1.ren.hp > 0)
         {
            ai(_parent._parent.hero1);
         }
         else
         {
            ai(_parent._parent.hero2);
         }
         _parent._parent.hits(_parent._parent.hero1,this);
         hits2(_parent._parent.hero1);
         if(_parent._parent.player == 2)
         {
            hits2(_parent._parent.hero2);
            _parent._parent.hits(_parent._parent.hero2,this);
         }
         if(this.sd1 > 0)
         {
            sd1 -= 0.8;
            this._parent._x -= sd1;
         }
         if(sd2 > 0)
         {
            sd2 -= 0.8;
            this._parent._x += sd2;
         }
         if(this.sd12 > 0)
         {
            sd12 -= 0.8;
            this._parent._y -= sd12;
            this._parent.yz._y += sd12 * 2;
         }
         if(sd22 > 0)
         {
            sd22 -= 0.8;
            this._parent._y += sd22;
            this._parent.yz._y -= sd22 * 2;
         }
         if(_parent._y < _parent._parent.kbiao._y)
         {
            _parent._y = _parent._parent.kbiao._y;
         }
         if(this._parent._x < _parent._parent.b1._x)
         {
            if(this.sd1 > 10)
            {
               _parent._xscale = 100;
               if(this._currentframe != 1 && this._currentframe != 2 && this._currentframe != 10)
               {
                  st_mc2.play();
                  penghit.play();
               }
               sd2 = sd1;
               sd1 = 0;
            }
            this._parent._x = _parent._parent.b1._x;
         }
         if(this._parent._x > _parent._parent.b2._x)
         {
            if(this.sd2 > 10)
            {
               _parent._xscale = -100;
               if(this._currentframe != 1 && this._currentframe != 2 && this._currentframe != 10)
               {
                  st_mc2.play();
                  penghit.play();
               }
               sd1 = sd2;
               sd2 = 0;
            }
            this._parent._x = _parent._parent.b2._x;
         }
      }
   }
   else if(_parent._parent._parent.vs < 1)
   {
      delete this.onEnterFrame;
   }
}
stop();
st = 0;
gaosd = 0;
if(_parent.zj != 1)
{
   if(hp == undefined)
   {
      zonghp = 1300;
      hp = zonghp;
      sd1 = 0;
      sd2 = 0;
      sd12 = 0;
      sd22 = 0;
      gjl = 10;
   }
}
