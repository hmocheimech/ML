
(*Return fourth elemnt of The list. If the length of the list is less than four it return the first element  *)
fun fourth s = if (length s < 4) then hd s else hd (tl(tl(tl s)));

(*return the smalest integer *)
fun min3(a:int,b:int,c:int)=if a < b then if a < c then a
else c else if b > c then c else b;

(*function that move the first elemnt in the list toward the end *)
fun cycle1 List = (tl List)@[hd List];

(*delet the second elemnt a list *)
fun del List= if (length List <3) then tl(tl List) else [hd List]@  tl(tl List);

(*Calculate square root *)
fun sqrt(x:int)=x*x;

(*calculate the cube of a real number*)
fun cuber(a:real)=a*a*a;

(*return the list cycled n times ex ([1,2,3,4,5,6],2)= [3,4,5,6,1,2] *)
 fun cycle (List,num:int)=if (num=1)then cycle1 List else cycle (cycle1 List,num-1);
 
(*return sum of the sqrt from n to 0, if given number is negative it will return zero as of error,*)
 fun sqsum (num)=if(num=0) orelse (num<0) then 0 else if (num=1) then 1 else sqrt(num)+ sqsum(num-1);
 
(* union of two list *)
fun member(List1,[]) = true | member(List1,List2) = if  hd List2=List1 then false else member(List1,tl List2);
fun union ([],List2)=List2|union(List1,List2)= if member(hd List1,List2)= true then
[hd List1]@ union(tl List1,List2) else union(tl List1,List2);

(* Intersection of two list *)
fun intersection ([],List2)=[] | intersection(List1,List2)= if member(hd List1,List2)=false 
then [hd ab]@ intersection(tl List1,List2) 
else intersection(tl List1,List2);


