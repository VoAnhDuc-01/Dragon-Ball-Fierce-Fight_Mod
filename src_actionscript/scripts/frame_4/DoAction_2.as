stop();
vsguan = 0;
if(vs == 2)
{
   vs = 0;
   guanshu = 0;
   vsguan = 0;
   vs = 2;
   p2 = 2;
   player = 1;
}
guanshu2 = 0;
var so = SharedObject.getLocal("lzjd2.7","/");
guaisi = 0;
chuguai = 0;
yanshi = 0;
xz = 1;
if(p1 == undefined)
{
   p1 = 1;
}
if(p2 == undefined)
{
   p2 = 2;
}
if(player == 1)
{
   p2_mc._visible = false;
}
p1_mc._x = this["an" + p1 + "_an"]._x;
p1_mc._y = this["an" + p1 + "_an"]._y;
p2_mc._x = this["an" + p2 + "_an"]._x;
p2_mc._y = this["an" + p2 + "_an"]._y;
tx_mc.gotoAndStop(p1);
if(player == 2)
{
   tx2_mc.gotoAndStop(p2);
}
else
{
   tx2_mc.gotoAndStop(tx2_mc._totalframes);
}
ans = 1;
while(ans <= 31)
{
   this["an" + ans + "_an"].onRollOut = function()
   {
      if(xz == 1)
      {
         tx_mc.gotoAndStop(tx_mc._totalframes);
      }
      if(xz == 2)
      {
         tx2_mc.gotoAndStop(tx2_mc._totalframes);
      }
   };
   this["an" + ans + "_an"].onRollOver = function()
   {
      if(xz == 1)
      {
         p1_mc._x = this._x;
         p1_mc._y = this._y;
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p1_mc._x == this._parent["an" + ans2 + "_an"]._x && p1_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               tx_mc.gotoAndStop(ans2);
            }
            ans2++;
         }
      }
      else if(xz == 2 && player == 2)
      {
         p2_mc._x = this._x;
         p2_mc._y = this._y;
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p2_mc._x == this._parent["an" + ans2 + "_an"]._x && p2_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               tx2_mc.gotoAndStop(ans2);
            }
            ans2++;
         }
      }
   };
   this["an" + ans + "_an"].onPress = function()
   {
      if(player == 1)
      {
         p1_mc._x = this._x;
         p1_mc._y = this._y;
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p1_mc._x == this._parent["an" + ans2 + "_an"]._x && p1_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               if(this._parent["tou" + ans2]._currentframe == 1)
               {
                  p1 = ans2;
                  tx_mc.gotoAndStop(ans2);
                  trace("ok");
               }
            }
            ans2++;
         }
      }
      if(xz == 1)
      {
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p1_mc._x == this._parent["an" + ans2 + "_an"]._x && p1_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               if(this._parent["tou" + ans2]._currentframe == 1)
               {
                  p1 = ans2;
                  xz += 1;
               }
            }
            ans2++;
         }
      }
      else if(xz == 2)
      {
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p2_mc._x == this._parent["an" + ans2 + "_an"]._x && p2_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               if(this._parent["tou" + ans2]._currentframe == 1)
               {
                  p2 = ans2;
                  xz += 1;
               }
            }
            ans2++;
         }
      }
      else if(xz == 3)
      {
         p1_mc._x = this._x;
         p1_mc._y = this._y;
         ans2 = 1;
         while(ans2 <= 31)
         {
            if(p1_mc._x == this._parent["an" + ans2 + "_an"]._x && p1_mc._y == this._parent["an" + ans2 + "_an"]._y)
            {
               if(this._parent["tou" + ans2]._currentframe == 1)
               {
                  p1 = ans2;
                  tx_mc.gotoAndStop(ans2);
                  xz = 2;
               }
            }
            ans2++;
         }
      }
   };
   ans++;
}
