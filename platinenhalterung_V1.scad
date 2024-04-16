
module Gestell()
 {
/*     
hull ()
{
translate ([84,0,0]) cylinder (h=9, d=5);
rotate ([0,0,45]) translate ([87,-17,0])  cylinder (h=9, d=8); 
}
*/
hull()
{
translate ([-84,0,0]) cylinder (h=9, d=5);
rotate ([0,0,45]) translate ([-87,17,0])  cylinder (h=9, d=8); 
}
/*
hull()
{
translate ([0,84,0]) cylinder (h=9, d=5);
rotate ([0,0,45]) translate ([87,17,0])  cylinder (h=9, d=8);
}
*/ 
hull()
{
translate ([0,-84,0]) cylinder (h=9, d=5);
rotate ([0,0,45]) translate ([-87,-17,0])  cylinder (h=9, d=8); 
}
 
//
// ^ arme 
//
/*
hull()
{
translate ([94,0,0]) cylinder (h=9, d=8);
translate ([84,0,0]) cylinder (h=9, d=6);
}

hull()
{
translate ([0,94,0]) cylinder (h=9, d=8);
translate ([0,84,0]) cylinder (h=9, d=6);
}
*/
hull()
{    
translate ([-94,0,0]) cylinder (h=9, d=8);
translate ([-84,0,0]) cylinder (h=9, d=6);
}

hull()
{
translate ([0,-94,0]) cylinder (h=9, d=8);
translate ([0,-84,0]) cylinder (h=9, d=6);
}
//
//^chassie Verbindung 
//
/*
hull()
{
    rotate ([0,0,45]) translate ([87,-17,0])  cylinder (h=9, d=8);
    rotate ([0,0,45]) translate ([87,17,0])  cylinder (h=9, d=8);
}
*/
hull()
{
    rotate ([0,0,45]) translate ([-87,17,0])  cylinder (h=9, d=8); 
    rotate ([0,0,45]) translate ([-87,-17,0])  cylinder (h=9, d=8); 
}
//
// ^Verbindung Platinenteil 
//

}



difference()
{
//    
//  Loecher  
//    
    Gestell();


    translate ([94,0,0]) cylinder (h=9, d=5);
    rotate ([0,0,45]) translate ([87,-17,0])  cylinder (h=9, d=5); 
    translate ([-94,0,0]) cylinder (h=9, d=5);
    rotate ([0,0,45]) translate ([-87,17,0])  cylinder (h=9, d=5);
    translate ([0,-94,0]) cylinder (h=9, d=5);
    rotate ([0,0,45]) translate ([-87,-17,0])  cylinder (h=9, d=5); 
    translate ([0,94,0]) cylinder (h=9, d=5);
    rotate ([0,0,45]) translate ([87,17,0])  cylinder (h=9, d=5);
}














