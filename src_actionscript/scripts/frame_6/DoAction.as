function zb()
{
   hitshu_mcs.gotoAndStop(2);
}
function back()
{
   removeMovieClip(map.hero1);
   removeMovieClip(map.hero2);
   sc();
   clearInterval(zhao_mc1.zhao_mc1.f1);
   clearInterval(zhao_mc1.zhao_mc2.f1);
   clearInterval(zhao_mc1.zhao_mc3.f1);
   clearInterval(zhao_mc2.zhao_mc1.f1);
   clearInterval(zhao_mc2.zhao_mc2.f1);
   clearInterval(zhao_mc2.zhao_mc3.f1);
   stopAllSounds();
   dian = 4;
   kai_mc.kai_mc.gotoAndStop(1);
   kai_mc.mc4.gotoAndPlay(2);
   if(vs != 2)
   {
      gotoAndStop("map");
   }
}
function sc()
{
   var _loc1_ = 0;
   while(_loc1_ <= guaisi)
   {
      removeMovieClip(map["guai" + _loc1_]);
      _loc1_ = _loc1_ + 1;
   }
}
yss = 300;
var UPJ;
var DOWNJ;
var LEFTJ;
var RIGHTJ;
var AJ;
var BJ;
var CJ;
var DJ;
var EJ;
var FJ;
var UP2;
var DOWN2;
var LEFT2;
var RIGHT2;
var AJ2;
var BJ2;
var CJ2;
var DJ2;
var EJ2;
var FJ2;
UPJ = 87;
DOWNJ = 83;
LEFTJ = 65;
RIGHTJ = 68;
UP2 = 38;
DOWN2 = 40;
LEFT2 = 37;
RIGHT2 = 39;
AJ = 74;
BJ = 75;
CJ = 76;
DJ = 85;
EJ = 73;
FJ = 79;
AJ2 = 97;
BJ2 = 98;
CJ2 = 99;
DJ2 = 100;
EJ2 = 101;
FJ2 = 102;
if(yanshi != 1)
{
   if(vs != 1)
   {
      if(guanshu2 == 0)
      {
         guan_mc.gotoAndStop(guanshu);
      }
      else
      {
         guan_mc.gotoAndStop(guanshu2 + 99);
      }
   }
   else
   {
      guan_mc.gotoAndStop(200);
   }
}
else
{
   p1 = 5;
   p2 = 16;
   guan_mc.gotoAndStop("yanshi");
   st_mc.gotoAndStop(1);
}
if(p1 == 1)
{
   map.attachMovie("wukong","hero1",800);
}
if(p1 == 2)
{
   map.attachMovie("kelin","hero1",800);
}
if(p1 == 3)
{
   map.attachMovie("cjwukong","hero1",800);
}
if(p1 == 4)
{
   map.attachMovie("cl","hero1",800);
}
if(p1 == 5)
{
   map.attachMovie("wkc3","hero1",800);
}
if(p1 == 6)
{
   map.attachMovie("tbb","hero1",800);
}
if(p1 == 7)
{
   map.attachMovie("wufan","hero1",800);
}
if(p1 == 8)
{
   map.attachMovie("bjt","hero1",800);
}
if(p1 == 9)
{
   map.attachMovie("cjwk2","hero1",800);
}
if(p1 == 10)
{
   map.attachMovie("bike","hero1",800);
}
if(p1 == 11)
{
   map.attachMovie("wkc4","hero1",800);
}
if(p1 == 12)
{
   map.attachMovie("tlks","hero1",800);
}
if(p1 == 13)
{
   map.attachMovie("wjt","hero1",800);
}
if(p1 == 14)
{
   map.attachMovie("dmw","hero1",800);
}
if(p1 == 15)
{
   map.attachMovie("cjbjt","hero1",800);
}
if(p1 == 16)
{
   map.attachMovie("fls","hero1",800);
}
if(p1 == 17)
{
   map.attachMovie("cell","hero1",800);
}
if(p1 == 18)
{
   map.attachMovie("bll","hero1",800);
}
if(p1 == 19)
{
   map.attachMovie("tlksc3","hero1",800);
}
if(p1 == 20)
{
   map.attachMovie("bjtc4","hero1",800);
}
if(p1 == 21)
{
   map.attachMovie("buou","hero1",800);
}
if(p1 == 22)
{
   map.attachMovie("wjtc4","hero1",800);
}
if(p1 == 23)
{
   map.attachMovie("dpla","hero1",800);
}
if(p1 == 24)
{
   map.attachMovie("mrbjt","hero1",800);
}
if(p1 == 25)
{
   map.attachMovie("wtks","hero1",800);
}
if(p1 == 26)
{
   map.attachMovie("dawufan","hero1",800);
}
if(p1 == 27)
{
   map.attachMovie("ebuou","hero1",800);
}
if(p1 == 28)
{
   map.attachMovie("18","hero1",800);
}
if(p1 == 29)
{
   map.attachMovie("fls100","hero1",800);
}
if(p1 == 30)
{
   map.attachMovie("bns","hero1",800);
}
if(p1 == 31)
{
   map.attachMovie("lds","hero1",800);
}
if(player == 2)
{
   if(p2 == 1)
   {
      map.attachMovie("wukong","hero2",900);
   }
   if(p2 == 2)
   {
      map.attachMovie("kelin","hero2",900);
   }
   if(p2 == 3)
   {
      map.attachMovie("cjwukong","hero2",900);
   }
   if(p2 == 4)
   {
      map.attachMovie("cl","hero2",900);
   }
   if(p2 == 5)
   {
      map.attachMovie("wkc3","hero2",900);
   }
   if(p2 == 6)
   {
      map.attachMovie("tbb","hero2",900);
   }
   if(p2 == 7)
   {
      map.attachMovie("wufan","hero2",900);
   }
   if(p2 == 8)
   {
      map.attachMovie("bjt","hero2",900);
   }
   if(p2 == 9)
   {
      map.attachMovie("cjwk2","hero2",900);
   }
   if(p2 == 10)
   {
      map.attachMovie("bike","hero2",900);
   }
   if(p2 == 11)
   {
      map.attachMovie("wkc4","hero2",900);
   }
   if(p2 == 12)
   {
      map.attachMovie("tlks","hero2",900);
   }
   if(p2 == 13)
   {
      map.attachMovie("wjt","hero2",900);
   }
   if(p2 == 14)
   {
      map.attachMovie("dmw","hero2",900);
   }
   if(p2 == 15)
   {
      map.attachMovie("cjbjt","hero2",900);
   }
   if(p2 == 16)
   {
      map.attachMovie("fls","hero2",900);
   }
   if(p2 == 17)
   {
      map.attachMovie("cell","hero2",900);
   }
   if(p2 == 18)
   {
      map.attachMovie("bll","hero2",900);
   }
   if(p2 == 19)
   {
      map.attachMovie("tlksc3","hero2",900);
   }
   if(p2 == 20)
   {
      map.attachMovie("bjtc4","hero2",900);
   }
   if(p2 == 21)
   {
      map.attachMovie("buou","hero2",900);
   }
   if(p2 == 22)
   {
      map.attachMovie("wjtc4","hero2",900);
   }
   if(p2 == 23)
   {
      map.attachMovie("dpla","hero2",900);
   }
   if(p2 == 24)
   {
      map.attachMovie("mrbjt","hero2",900);
   }
   if(p2 == 25)
   {
      map.attachMovie("wtks","hero2",900);
   }
   if(p2 == 26)
   {
      map.attachMovie("dawufan","hero2",900);
   }
   if(p2 == 27)
   {
      map.attachMovie("ebuou","hero2",900);
   }
   if(p2 == 28)
   {
      map.attachMovie("18","hero2",900);
   }
   if(p2 == 29)
   {
      map.attachMovie("fls100","hero2",900);
   }
   if(p2 == 30)
   {
      map.attachMovie("bns","hero2",900);
   }
   if(p2 == 31)
   {
      map.attachMovie("lds","hero2",900);
   }
}
map.hero1.zj = 1;
if(vs != 2)
{
   map.hero2.zj = 1;
}
if(vs == 1)
{
   map.hero1._x = map.b3._x;
   map.hero2._x = map.b4._x;
   guaihp_mc._visible = false;
}
else
{
   map.hero1._x = map.b3._x - 100;
   map.hero2._x = map.b4._x + 100;
   map.hero2._xscale = -100;
}
map.hero1._y = map.b1._y;
map.hero2._y = map.b1._y;
if(vs == 2)
{
   guan_mc2.gotoAndStop(vsguan + 1);
}
