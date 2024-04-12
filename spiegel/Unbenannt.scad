$fn = 90;
n = 6;

difference()
{
    union()
    {
        difference()
        {
            union()
            {
                cylinder(d1=0,d2=63.569,h=8.1);
                translate([0,0,7.9]) cylinder(d=69,h=5);
            }
            difference()
            {
                translate([0,0,5.9]) cylinder(d=71,h=5);
                translate([0,0,5.9]) cylinder(d=64,h=5);
            }
        }
    
        intersection()
        {
            difference()
            {
                translate([0,0,5.9]) cylinder(d=69,h=100,center=true);
                translate([0,0,5.9]) cylinder(d=66,h=101,center=true);
            }
            union()
            {
                for (i = [0:n])
                {
                    translate([0,0,10.5]) hull()
                    {
                        translate([0,0,1]) rotate([0,0,(360/n)*i+4]) cube([1,100,1],center=true);
                        translate([0,0,1]) rotate([0,0,(360/n)*i-4]) cube([1,100,1],center=true);

                        translate([0,0,-2.5]) rotate([90,0,(360/n)*i+2]) cylinder(d=1,h=200,center=true);
                        translate([0,0,-2.5]) rotate([90,0,(360/n)*i-2]) cylinder(d=1,h=200,center=true);

                    }
                }
            }
        }
    }
    
    translate([0,0,9.5]) difference()
    {
        for (i = [0:n])
        {
            rotate([90,0,(360/n)*i]) cylinder(d=2,h=300,center=true);
        }
        cylinder(d=60, h= 100, center=true);
    }
}

translate([0,0,8]) cylinder(d=7,h=20);