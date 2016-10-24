
(*function that return fourth elemnt of a list. if the length of the list is less than 4 it return the first elemnt  *)
fun fourth s = if (length s < 4) then hd s else hd (tl(tl(tl s)));
