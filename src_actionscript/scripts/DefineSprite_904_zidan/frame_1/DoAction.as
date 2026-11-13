function onEnterFrame()
{
   if(this._x < _parent.b1._x - 50 or this._x > _parent.b2.x + 50)
   {
      play();
      delete this.onEnterFrame;
   }
   if(this._currentframe == 1)
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
   if(this.hitTest(_parent.hero1.ren.ren.hit))
   {
      if(_parent.hero1.ren.ren.bod == 1)
      {
         this.play();
      }
   }
   if(this.hitTest(_parent.hero2.ren.ren.hit))
   {
      if(_parent.hero2.ren.ren.bod == 1)
      {
         this.play();
      }
   }
   if(this.hitTest(_parent.bo1) or this.hitTest(_parent.bo2))
   {
      this.play();
   }
   if(this.hitTest(_parent.hero1.ren.ren.dang))
   {
      _parent.hero1.ren.st_mc3.play();
      if(_parent.hero1._x < this._x)
      {
         _parent.hero1.ren.sd1 += 12;
      }
      else
      {
         _parent.hero1.ren.sd2 += 12;
      }
      this.play();
   }
   if(this.hitTest(_parent.hero2.ren.ren.dang))
   {
      _parent.hero2.ren.st_mc3.play();
      if(_parent.hero2._x < this._x)
      {
         _parent.hero2.ren.sd1 += 12;
      }
      else
      {
         _parent.hero2.ren.sd2 += 12;
      }
      this.play();
   }
   if(_parent.hero1.ren.hp > 0)
   {
      if(this.hitTest(_parent.hero1.ren.hit))
      {
         _parent.hero1.ren.hp -= 10;
         _parent.hero1.ren.gotoAndStop("hit");
         _parent.hero1.ren.quanhit.gotoAndPlay(1);
         _parent.hero1.ren.st_mc2.play();
         if(_parent.hero1._x < this._x)
         {
            _parent.hero1.ren.sd1 += 12;
         }
         else
         {
            _parent.hero1.ren.sd2 += 12;
         }
         play();
      }
   }
   if(_parent.hero2.ren.hp > 0)
   {
      if(this.hitTest(_parent.hero2.ren.hit))
      {
         _parent.hero2.ren.hp -= 10;
         _parent.hero2.ren.gotoAndStop("hit");
         _parent.hero2.ren.quanhit.gotoAndPlay(1);
         _parent.hero2.ren.st_mc2.play();
         if(_parent.hero2._x < this._x)
         {
            _parent.hero2.ren.sd1 += 12;
         }
         else
         {
            _parent.hero2.ren.sd2 += 12;
         }
         play();
      }
   }
}
sd = 8;
stop();
