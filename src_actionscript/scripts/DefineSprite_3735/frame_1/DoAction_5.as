stop();
if(bok == undefined)
{
   bok = 0;
}
if(bok == 0)
{
   if(_parent == _parent._parent.hero1 or _parent == _parent._parent.hero2)
   {
      gotoAndStop("bian");
   }
}
if(zonghp == undefined)
{
   okqi = 0;
   qi = 100;
   if(_parent._parent._parent.vs != 1)
   {
      if(_parent._parent._parent.nandu == 1)
      {
         zonghp = 800;
         hp = zonghp;
      }
      else
      {
         zonghp = 600;
         hp = zonghp;
      }
   }
   else
   {
      zonghp = 3500;
      hp = zonghp;
   }
   sdb = 18;
   ap = 100;
   gjl = 10;
   sd1 = 0;
   sd2 = 0;
   da = 0;
   da2 = 0;
   st = 0;
   gaosd = 0;
   bi1chu = "2asdasd";
   bi1chu2 = "2asdasd";
   bi1f = "zhao1";
   bi1ap = 20;
   bi2chu2 = "3asdf";
   bi2chu = "3asdasf";
   bi2f = "t2";
   bi2ap = 10;
   bi3chu = "→↓←Aasd";
   bi3chu2 = "←↓→Aasd";
   bi3f = "bi3";
   bi3ap = 20;
   bi4chu = "↓←↓←ABCasd";
   bi4chu2 = "↓→↓→ABCasd";
   bi4f = "bisha";
   bi4ap = 70;
}
if(qi > 100)
{
   qi = 100;
}
if(okqi > qi)
{
   okqi = qi;
}
