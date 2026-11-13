function onEnterFrame()
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
stop();
st = 0;
gaosd = 0;
if(hp == undefined)
{
   zonghp = 750;
   hp = zonghp;
   sd1 = 0;
   sd2 = 0;
   gjl = 10;
}
