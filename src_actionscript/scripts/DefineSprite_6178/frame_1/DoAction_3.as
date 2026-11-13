function order(a, b)
{
   var _loc2_ = Number(a.split(":")[1]);
   var _loc1_ = Number(b.split(":")[1]);
   if(_loc2_ < _loc1_)
   {
      return -1;
   }
   if(_loc2_ > _loc1_)
   {
      return 1;
   }
   return 0;
}
