if(_parent.hp > 0)
{
   _parent.gotoAndStop(1);
}
else
{
   _parent._parent._parent._parent.guaisi += 1;
   delete this._parent.onEnterFrame;
   _parent._parent.biao = false;
}
stop();
