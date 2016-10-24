
(*Return fourth elemnt of The list. If the length of the list is less than four it return the first element  *)
fun fourth s = if (length s < 4) then hd s else hd (tl(tl(tl s)));

(*return the smalest integer *)
fun min3(a:int,b:int,c:int)=if a < b then if a < c then a
else c else if b > c then c else b;
