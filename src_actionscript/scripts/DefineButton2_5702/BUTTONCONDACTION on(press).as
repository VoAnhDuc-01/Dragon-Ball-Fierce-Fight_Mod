on(press){
   if(so.data.tongguan != undefined)
   {
      hei_mc.gotoAndPlay(2);
      tongguan = so.data.tongguan;
      nandu = so.data.nandu;
      tongguanx1 = so.data.tongguanx1;
      tongguanx2 = so.data.tongguanx2;
      tongguanx3 = so.data.tongguanx3;
      tongguanx4 = so.data.tongguanx4;
      gotoAndStop(4);
   }
   else
   {
      mei_mc.play();
   }
}
