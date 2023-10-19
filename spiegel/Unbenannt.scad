$fn = 90;
difference()
{
    union()
    {
        cylinder(d1=0,d2=130,h=26);
        translate([0,0,26]) cylinder(d=150,h=4);
    }
    //translate([0,0,5]) cylinder(d1=0,d2=130,h=26);
}
