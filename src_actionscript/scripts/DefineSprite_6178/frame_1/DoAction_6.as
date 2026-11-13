function anjian()
{
   if(p1t != "")
   {
      if(jip1t > 0 && p1t.length < 20)
      {
         jip1t -= 0.5;
      }
      else
      {
         jip1t = jishu1;
         p1t = "";
      }
   }
   if(p2t != "")
   {
      if(jip2t > 0 && p2t.length < 20)
      {
         jip2t -= 0.5;
      }
      else
      {
         jip2t = jishu1;
         p2t = "";
      }
   }
   var p1_left = Key.isDown(_parent.LEFTJ) || (_parent.player != 2 && Key.isDown(_parent.LEFT2));
   var p1_right = Key.isDown(_parent.RIGHTJ) || (_parent.player != 2 && Key.isDown(_parent.RIGHT2));
   var p1_up = Key.isDown(_parent.UPJ) || (_parent.player != 2 && Key.isDown(_parent.UP2));
   var p1_down = Key.isDown(_parent.DOWNJ) || (_parent.player != 2 && Key.isDown(_parent.DOWN2));
   if(p1_left)
   {
      if(aj2 != true)
      {
         p1t += "←";
         jip1t = jishu1;
      }
      aj2 = true;
   }
   if(p1_right)
   {
      if(dj2 != true)
      {
         p1t += "→";
         jip1t = jishu1;
      }
      dj2 = true;
   }
   if(p1_up)
   {
      if(wj2 != true)
      {
         p1t += "↑";
         jip1t = jishu1;
      }
      wj2 = true;
   }
   if(p1_down)
   {
      if(sj2 != true)
      {
         p1t += "↓";
         jip1t = jishu1;
      }
      sj2 = true;
   }
   if(Key.isDown(_parent.AJ))
   {
      if(Ajanxia != true)
      {
         p1t += "A";
         jip1t = jishu1;
         Aj = true;
         Ajanxia = true;
      }
   }
   if(Key.isDown(_parent.BJ))
   {
      if(Bjanxia != true)
      {
         p1t += "B";
         jip1t = jishu1;
         Bj = true;
         Bjanxia = true;
      }
   }
   if(Key.isDown(_parent.CJ))
   {
      Cj = true;
   }
   if(Key.isDown(_parent.DJ))
   {
      if(Djanxia != true)
      {
         p1t += "1";
         jip1t = jishu1;
         Dj = true;
         Djanxia = true;
      }
   }
   if(Key.isDown(_parent.EJ))
   {
      if(Ejanxia != true)
      {
         p1t += "2";
         jip1t = jishu1;
         Ej = true;
         Ejanxia = true;
      }
   }
   if(Key.isDown(_parent.FJ))
   {
      if(Fjanxia != true)
      {
         p1t += "3";
         jip1t = jishu1;
         Fj = true;
         Fjanxia = true;
      }
   }
   if(Key.isDown(_parent.UP2))
   {
      if(shangj != true)
      {
         p2t += "↑";
         jip2t = jishu1;
      }
      shangj = true;
   }
   if(Key.isDown(_parent.DOWN2))
   {
      if(xiaj != true)
      {
         p2t += "↓";
         jip2t = jishu1;
      }
      xiaj = true;
   }
   if(Key.isDown(_parent.LEFT2))
   {
      if(zuoj != true)
      {
         p2t += "←";
         jip2t = jishu1;
      }
      zuoj = true;
   }
   if(Key.isDown(_parent.RIGHT2))
   {
      if(youj != true)
      {
         p2t += "→";
         jip2t = jishu1;
      }
      youj = true;
   }
   if(Key.isDown(_parent.AJ2))
   {
      if(Ajanxia2 != true)
      {
         p2t += "A";
         jip2t = jishu1;
         Aj2 = true;
         Ajanxia2 = true;
      }
   }
   if(Key.isDown(_parent.BJ2))
   {
      if(Bjanxia2 != true)
      {
         p2t += "B";
         jip2t = jishu1;
         Bj2 = true;
         Bjanxia2 = true;
      }
   }
   if(Key.isDown(_parent.CJ2))
   {
      Cj2 = true;
   }
   if(Key.isDown(_parent.DJ2))
   {
      if(Djanxia2 != true)
      {
         p2t += "1";
         jip2t = jishu1;
         Dj2 = true;
         Djanxia2 = true;
      }
   }
   if(Key.isDown(_parent.EJ2))
   {
      if(Ejanxia2 != true)
      {
         p2t += "2";
         jip2t = jishu1;
         Ej2 = true;
         Ejanxia2 = true;
      }
   }
   if(Key.isDown(_parent.FJ2))
   {
      if(Fjanxia2 != true)
      {
         p2t += "3";
         jip2t = jishu1;
         Fj2 = true;
         Fjanxia2 = true;
      }
   }
   if(!p1_left)
   {
      aj2 = false;
   }
   if(!p1_right)
   {
      dj2 = false;
   }
   if(!p1_up)
   {
      wj2 = false;
   }
   if(!p1_down)
   {
      sj2 = false;
   }
   if(!Key.isDown(_parent.UP2))
   {
      shangj = false;
   }
   if(!Key.isDown(_parent.DOWN2))
   {
      xiaj = false;
   }
   if(!Key.isDown(_parent.LEFT2))
   {
      zuoj = false;
   }
   if(!Key.isDown(_parent.RIGHT2))
   {
      youj = false;
   }
   if(!Key.isDown(_parent.AJ))
   {
      Ajanxia = false;
   }
   if(!Key.isDown(_parent.BJ))
   {
      Bjanxia = false;
   }
   if(!Key.isDown(_parent.CJ))
   {
      Cj = false;
   }
   if(!Key.isDown(_parent.DJ))
   {
      Djanxia = false;
   }
   if(!Key.isDown(_parent.EJ))
   {
      Ejanxia = false;
   }
   if(!Key.isDown(_parent.FJ))
   {
      Fjanxia = false;
   }
   if(!Key.isDown(_parent.AJ2))
   {
      Ajanxia2 = false;
   }
   if(!Key.isDown(_parent.BJ2))
   {
      Bjanxia2 = false;
   }
   if(!Key.isDown(_parent.CJ2))
   {
      Cj2 = false;
   }
   if(!Key.isDown(_parent.DJ2))
   {
      Djanxia2 = false;
   }
   if(!Key.isDown(_parent.EJ2))
   {
      Ejanxia2 = false;
   }
   if(!Key.isDown(_parent.FJ2))
   {
      Fjanxia2 = false;
   }
   if(Aj == true)
   {
      jiAjanxia -= 1;
      if(jiAjanxia <= 0)
      {
         Aj = false;
         jiAjanxia = 2;
      }
   }
   if(Bj == true)
   {
      jiBjanxia -= 1;
      if(jiBjanxia <= 0)
      {
         Bj = false;
         jiBjanxia = 2;
      }
   }
   if(Dj == true)
   {
      jiDjanxia -= 1;
      if(jiDjanxia <= 0)
      {
         Dj = false;
         jiDjanxia = 2;
      }
   }
   if(Ej == true)
   {
      jiEjanxia -= 1;
      if(jiEjanxia <= 0)
      {
         Ej = false;
         jiEjanxia = 2;
      }
   }
   if(Fj == true)
   {
      jiFjanxia -= 1;
      if(jiFjanxia <= 0)
      {
         Fj = false;
         jiFjanxia = 2;
      }
   }
   if(Aj2 == true)
   {
      jiAjanxia2 -= 1;
      if(jiAjanxia2 <= 0)
      {
         Aj2 = false;
         jiAjanxia2 = 2;
      }
   }
   if(Bj2 == true)
   {
      jiBjanxia2 -= 1;
      if(jiBjanxia2 <= 0)
      {
         Bj2 = false;
         jiBjanxia2 = 2;
      }
   }
   if(Dj2 == true)
   {
      jiDjanxia2 -= 1;
      if(jiDjanxia2 <= 0)
      {
         Dj2 = false;
         jiDjanxia2 = 2;
      }
   }
   if(Ej2 == true)
   {
      jiEjanxia2 -= 1;
      if(jiEjanxia2 <= 0)
      {
         Ej2 = false;
         jiEjanxia2 = 2;
      }
   }
   if(Fj2 == true)
   {
      jiFjanxia2 -= 1;
      if(jiFjanxia2 <= 0)
      {
         Fj2 = false;
         jiFjanxia2 = 2;
      }
   }
}
var Aj = false;
var Bj = false;
var Cj = false;
var Dj = false;
var Ej = false;
var Fj = false;
var aj2 = false;
var dj2 = false;
var wj2 = false;
var sj2 = false;
var Aj2 = false;
var Bj2 = false;
var Cj2 = false;
var Dj2 = false;
var Ej2 = false;
var Fj2 = false;
var shangj = false;
var xiaj = false;
var zuoj = false;
var youj = false;
var Ajanxia = false;
var Cjanxia = false;
var Bjanxia = false;
var Djanxia = false;
var Ejanxia = false;
var Fjanxia = false;
var Ajanxia2 = false;
var Cjanxia2 = false;
var Bjanxia2 = false;
var Djanxia2 = false;
var Ejanxia2 = false;
var Fjanxia2 = false;
var jiAjanxia = 2;
var jiBjanxia = 2;
var jiCjanxia = 2;
var jiDjanxia = 2;
var jiEjanxia = 2;
var jiFjanxia = 2;
var jiAjanxia2 = 2;
var jiBjanxia2 = 2;
var jiCjanxia2 = 2;
var jiDjanxia2 = 2;
var jiEjanxia2 = 2;
var jiFjanxia2 = 2;
var p1t = "";
jishu1 = 3.5;
var jip1t = jishu1;
var p2t = "";
var jip2t = jishu1;
