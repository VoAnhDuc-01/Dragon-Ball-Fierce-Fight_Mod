function dongzuo(mc1, mc2, zuoj, youj, shangj, xiaj, aj, bj, cj, dj, ej, fj, zhao_mc, pt, bo)
{
   if(mc1.ren.st != 1)
   {
      if(_parent.vs != 1)
      {
      }
      if(mc1.fei != undefined)
      {
         if(mc1.ren._currentframe == 1 or mc1.ren._currentframe == 2)
         {
            if(pt == "↑↑")
            {
               mc1.fei = true;
               mc1.ren.fei_mc.play();
            }
         }
      }
      if(mc1.ren.hp <= 0)
      {
         if(_parent.vs == 1 or _parent.player == 1)
         {
            if(sst_mc._currentframe == 1)
            {
               sst_mc.play();
            }
         }
         mc1.ren.gotoAndStop("si");
      }
      if(mc1.ren.okqi > mc1.ren.qi)
      {
         mc1.ren.okqi = mc1.ren.qi;
      }
      if(mc1.ren.ren.bo == 1)
      {
         bo._x = mc1._x;
         bo._y = mc1._y - mc1.ren.ren._height / 3;
         bo.gotoAndStop(2);
         bo._xscale = mc1._xscale;
      }
      if(mc1.ren.sd1 > 0)
      {
         mc1.ren.sd1 -= 0.8;
         mc1._x -= mc1.ren.sd1;
      }
      if(mc1.ren.sd2 > 0)
      {
         mc1.ren.sd2 -= 0.8;
         mc1._x += mc1.ren.sd2;
      }
      if(mc1.ren.sd21 == undefined)
      {
         mc1.ren.sd21 = 0;
         mc1.ren.sd22 = 0;
      }
      if(mc1.ren.sd21 > -3)
      {
         mc1.ren.sd21 -= 0.8;
         mc1._y -= mc1.ren.sd21;
         mc1.yz._y += mc1.ren.sd21;
         mc1.yz._y += mc1.ren.sd21 / 2;
      }
      if(mc1.ren.sd22 > -3)
      {
         mc1.ren.sd22 -= 0.8;
         mc1._y += mc1.ren.sd22;
         mc1.yz._y -= mc1.ren.sd22;
         mc1.yz._y -= mc1.ren.sd22 / 2;
      }
      if(mc1._x < b1._x)
      {
         mc1._x = b1._x;
      }
      if(mc1._x > b2._x)
      {
         mc1._x = b2._x;
      }
      if(mc1._y < kbiao._y)
      {
         mc1._y = kbiao._y;
      }
      if(mc1._y >= b1._y)
      {
         if(mc1.fei == true)
         {
            mc1.fei = false;
         }
         mc1._y = b1._y;
         mc1.yz._y = 0;
      }
      if(mc1.ren._currentframe == 7)
      {
         if(mc1._x <= b1._x)
         {
            if(mc1.ren.sd1 > 10)
            {
               mc1._xscale = 100;
               mc1.ren.st_mc2.play();
               mc1.ren.penghit.play();
               mc1.ren.sd2 = mc1.ren.sd1;
               mc1.ren.sd1 = 0;
            }
         }
         if(mc1._x >= b2._x)
         {
            if(mc1.ren.sd2 > 10)
            {
               mc1._xscale = -100;
               mc1.ren.st_mc2.play();
               mc1.ren.penghit.play();
               mc1.ren.sd1 = mc1.ren.sd2;
               mc1.ren.sd2 = 0;
            }
         }
      }
      if(candong != 0)
      {
         if(mc1.ren._currentframe == 8)
         {
            if(aj == true)
            {
               if(mc1.ren.ren.onEnterFrame != undefined)
               {
                  delete mc1.ren.ren.onEnterFrame;
               }
               mc1.ren.gotoAndStop("chongda");
            }
         }
         if(mc1.ren._currentframe == 1 or mc1.ren._currentframe == 2)
         {
            if(mc1.fei != true)
            {
               mc1._y = b1._y;
            }
            if(dj == true)
            {
               if(mc1.ren.qi >= 10)
               {
                  mc1.ren.gotoAndStop("t1");
                  mc1.ren.qi -= 10;
               }
            }
            if(ej == true)
            {
               if(mc1.ren.qi >= 20)
               {
                  mc1.ren.gotoAndStop("zhao1");
                  mc1.ren.qi -= 20;
               }
            }
            if(fj == true)
            {
               if(mc1.ren.qi >= 10)
               {
                  mc1.ren.gotoAndStop("t2");
                  mc1.ren.qi -= 10;
               }
            }
            var bi_hit = false;
            if(pt == "↓→A" || pt == "↓←A")
            {
               bi_hit = true;
            }
            else if(pt.length >= 3 && (pt.substring(pt.length - 3) == "↓→A" || pt.substring(pt.length - 3) == "↓←A"))
            {
               bi_hit = true;
            }
            else if(pt.length >= 2 && pt.substring(pt.length - 2) == "↓A" && (youj == true || zuoj == true))
            {
               bi_hit = true;
            }
            if(bi_hit == true)
            {
               var bi_fired = false;
               if(mc1.ren.okqi >= 33 && mc1.ren.okqi < 66)
               {
                  mc1.ren.gotoAndStop("bi1");
                  mc1.ren.okqi -= 33;
                  mc1.ren.qi -= 20;
                  bi_fired = true;
               }
               else if(mc1.ren.okqi >= 66 && mc1.ren.okqi < 99)
               {
                  mc1.ren.gotoAndStop("bi2");
                  mc1.ren.okqi -= 66;
                  mc1.ren.qi -= 30;
                  bi_fired = true;
               }
               else if(mc1.ren.okqi >= 99)
               {
                  mc1.ren.gotoAndStop("bi3");
                  mc1.ren.okqi -= 99;
                  mc1.ren.qi -= 30;
                  bi_fired = true;
               }
               if(bi_fired == true)
               {
                  p1t = "";
                  p2t = "";
                  jip1t = 0;
                  jip2t = 0;
                  pt = "";
               }
            }
            if(mc1._xscale == 100)
            {
               if(pt == mc1.ren.bi1chu2)
               {
                  if(mc1.ren.qi >= mc1.ren.bi1ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi1ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi1f);
                  }
               }
               if(pt == mc1.ren.bi2chu2)
               {
                  if(mc1.ren.qi >= mc1.ren.bi2ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi2ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi2f);
                  }
               }
               if(pt == mc1.ren.bi3chu2)
               {
                  if(mc1.ren.qi >= mc1.ren.bi3ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi3ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi3f);
                  }
               }
               if(pt == mc1.ren.bi4chu2)
               {
                  if(mc1.ren.qi >= mc1.ren.bi4ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi4ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi4f);
                  }
               }
            }
            else
            {
               if(pt == mc1.ren.bi1chu)
               {
                  if(mc1.ren.qi >= mc1.ren.bi1ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi1ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi1f);
                  }
               }
               if(pt == mc1.ren.bi2chu)
               {
                  if(mc1.ren.qi >= mc1.ren.bi2ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi2ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi2f);
                  }
               }
               if(pt == mc1.ren.bi3chu)
               {
                  if(mc1.ren.qi >= mc1.ren.bi3ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi3ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi3f);
                  }
               }
               if(pt == mc1.ren.bi4chu)
               {
                  if(mc1.ren.qi >= mc1.ren.bi4ap)
                  {
                     mc1.ren.qi -= mc1.ren.bi4ap;
                     mc1.ren.gotoAndStop(mc1.ren.bi4f);
                  }
               }
            }
         }
         if(mc1.ren._currentframe == 2)
         {
            if(mc1._xscale == 100)
            {
               if(youj != true || zuoj == true)
               {
                  mc1.ren.gotoAndStop(1);
               }
            }
            else if(zuoj != true || youj == true)
            {
               mc1.ren.gotoAndStop(1);
            }
         }
         if(mc1.ren.ren.lian == 1)
         {
            if(aj == true)
            {
               mc1.ren.nextFrame();
            }
         }
         if(mc1.ren.ren.lianda == 1)
         {
            if(aj == true)
            {
               mc1.ren.ren.gotoAndPlay("lian");
            }
         }
         if(mc1.ren._currentframe == 11)
         {
            if(cj != true)
            {
               mc1.ren.gotoAndStop(1);
            }
         }
         if(mc1.ren._currentframe == 1 or mc1.ren._currentframe == 2)
         {
            if(pt == "→→")
            {
               mc1._xscale = 100;
               mc1.ren.gotoAndStop("chong");
               p1t = "";
               p2t = "";
               jip1t = 0;
               jip2t = 0;
               pt = "";
            }
            if(pt == "←←")
            {
               mc1._xscale = -100;
               mc1.ren.gotoAndStop("chong");
               p1t = "";
               p2t = "";
               jip1t = 0;
               jip2t = 0;
               pt = "";
            }
            if(cj == true)
            {
               mc1.ren.gotoAndStop("qi");
            }
            if(bj == true)
            {
               mc1.ren.gotoAndStop("tiao");
            }
            if(aj == true && shangj == true)
            {
               mc1.ren.gotoAndStop("zhao2");
            }
            if(aj == true && shangj != true)
            {
               mc1.ren.gotoAndStop("da1");
            }
            if(zhao_mc.zhao_mc1._currentframe == 2)
            {
               if(dj == true)
               {
                  mc1.ren.gotoAndStop("zhao1");
                  zhao_mc.zhao_mc1.gotoAndStop(1);
               }
            }
            if(zhao_mc.zhao_mc2._currentframe == 2)
            {
               if(ej == true)
               {
                  mc1.ren.gotoAndStop("zhao2");
                  zhao_mc.zhao_mc2.gotoAndStop(1);
               }
            }
            if(zhao_mc.zhao_mc3._currentframe == 2)
            {
               if(fj == true)
               {
                  mc1.ren.gotoAndStop("zhao3");
                  zhao_mc.zhao_mc3.gotoAndStop(1);
               }
            }
         }
         if(mc1.ren._currentframe == 3 or mc1.ren.ren.dong == 1)
         {
            if(aj == true && mc1.ren.ren.dong2 != 1)
            {
               mc1.ren.gotoAndStop("tiaoda");
            }
            if(aj == true && mc1.ren.ren.dong3 == 1)
            {
               mc1.ren.gotoAndStop("daxia");
               mc1.ren.ren.gotoAndPlay(1);
            }
            if(youj == true)
            {
               if(mc1._x < b2._x)
               {
                  mc1._x += mc1.ren.sdb;
               }
            }
            if(zuoj == true)
            {
               if(mc1._x > b1._x)
               {
                  mc1._x -= mc1.ren.sdb;
               }
            }
         }
         if(mc1.ren._currentframe == 1 or mc1.ren._currentframe == 2)
         {
            if(mc1.fei != true)
            {
               if(youj == true && zuoj != true)
               {
                  if(mc1._x < b2._x)
                  {
                     mc1._x += mc1.ren.sdb;
                     mc1._xscale = 100;
                     mc1.ren.gotoAndStop(2);
                  }
               }
               else if(zuoj == true && youj != true)
               {
                  if(mc1._x > b1._x)
                  {
                     mc1._x -= mc1.ren.sdb;
                     mc1._xscale = -100;
                     mc1.ren.gotoAndStop(2);
                  }
               }
               else if(youj == true && zuoj == true)
               {
                  mc1.ren.gotoAndStop(1);
               }
            }
            else
            {
               if(shangj == true)
               {
                  if(mc1._y > kbiao._y)
                  {
                     if(mc1.ren.sd21 < mc1.ren.sdb)
                     {
                        mc1.ren.sd21 += 3;
                     }
                  }
               }
               if(xiaj == true)
               {
                  if(mc1._y < b1._y)
                  {
                     if(mc1.ren.sd22 < mc1.ren.sdb)
                     {
                        mc1.ren.sd22 += 3;
                     }
                  }
               }
               if(youj == true)
               {
                  if(mc1._x < b2._x)
                  {
                     if(mc1.ren.sd2 < mc1.ren.sdb)
                     {
                        mc1.ren.sd2 += 3;
                     }
                     mc1._xscale = 100;
                     mc1.ren.gotoAndStop(2);
                  }
               }
               if(zuoj == true)
               {
                  if(mc1._x > b1._x)
                  {
                     if(mc1.ren.sd1 < mc1.ren.sdb)
                     {
                        mc1.ren.sd1 += 3;
                     }
                     mc1._xscale = -100;
                     mc1.ren.gotoAndStop(2);
                  }
               }
            }
         }
      }
   }
}
