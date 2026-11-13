if(_parent.hp > 0)
{
   _parent.gotoAndStop(1);
}
else
{
   delete this._parent.onEnterFrame;
   _parent._parent.biao = false;
   _parent._parent._parent._parent.guaisi += 1;
}
stop();
