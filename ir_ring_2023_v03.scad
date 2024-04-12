module tssp(a=0)
{
    
    rotate([ 0,0,180+a]) translate([-2.5,-2,-1]) cube([5,6,8]);
    rotate([ 0,0,180+a]) translate([-3.5,-3,-1]) cube([7,2,8]);
    rotate([10,0,180+a])
    {
        translate([-3.5,-2,-1]) cube([7,5,10]);
        translate([0,2,6.5]) sphere(r=2.5,$fn=90);
        translate([-0.5,2.2,2]) rotate([-10,0,0])cube([1.0,8,16]);
    }
    
    
}

module kranz()
{   
    for (i= [0:15])
    {rotate([0,0,22.5*i]) translate([0,-35.56,0]) tssp(0);}
    
       
    //translate([ 20, 20,-1]) cylinder(d=10,h=15,$fn=90);
    //translate([ 20,-20,-1]) cylinder(d=10,h=15,$fn=90);
    //translate([-20, 20,-1]) cylinder(d=10,h=15,$fn=90);
    //translate([-20,-20,-1]) cylinder(d=10,h=15,$fn=90);
}


module ring()
{
    difference()
    {
        union()
        {
            cylinder(d=82,h=1,$fn=180);
            cylinder(d=81,h=11,$fn=180);
        }
        
        difference()
        {
            translate([0,0,-1])cylinder(d=58,h=15,$fn=180);
            translate([ 20, 20,-1]) cylinder(d=12,h=15,$fn=90);      
            translate([ 20,-20,-1]) cylinder(d=12,h=15,$fn=90);
            translate([-20, 20,-1]) cylinder(d=12,h=15,$fn=90);
            translate([-20,-20,-1]) cylinder(d=12,h=15,$fn=90);
            
            //translate([ 22, 22,-1]) cylinder(d=14,h=15,$fn=90); 
            //translate([ 22,-22,-1]) cylinder(d=14,h=15,$fn=90); 
            //translate([-22, 22,-1]) cylinder(d=14,h=15,$fn=90); 
            //translate([-22,-22,-1]) cylinder(d=14,h=15,$fn=90); 
            
        }
        kranz();
        
        translate([ 20, 20,-1]) cylinder(d=4.5,h=15,$fn=90);
        translate([ 20,-20,-1]) cylinder(d=4.5,h=15,$fn=90);
        translate([-20, 20,-1]) cylinder(d=4.5,h=15,$fn=90);
        translate([-20,-20,-1]) cylinder(d=4.5,h=15,$fn=90);
        
        //translate([ 20, 20,1.5]) cylinder(d=9.5,h=15,$fn=90);
        //translate([ 20,-20,1.5]) cylinder(d=9.5,h=15,$fn=90);
        //translate([-20, 20,1.5]) cylinder(d=9.5,h=15,$fn=90);
        //translate([-20,-20,1.5]) cylinder(d=9.5,h=15,$fn=90);
    }
}


module klemme()
{
    difference()
    {
        union()
        {
            cylinder(d=84,h=8,$fn=180);
           
        }
        translate([0,0,-1])cylinder(d=76,h=10,$fn=180);
        translate([0,0, 1])cylinder(d=82,h=3.1,$fn=180);
        translate([0,0, 4])cylinder(d=81.5,h=10,$fn=180);
        
    }
}

mirror([0,0,1])ring();

//klemme();
