module cir(){
	difference(){
		rotate([90,0,0])
		cylinder(d=300/*change*/,h=20,center = true,$fn=300);
		rotate([90,0,0])
		cylinder(d=295/*5 less*/,h=20.1,center = true,$fn=300);
	}	
	}
module sqr(){
	cube([50,25,15],center = true);
	}

module curve(){
	intersection(){
	translate([0,0,150/*half of change*/])
	cir();
	sqr();
	}
}
module finalcurve(){
minkowski(){
	curve();
//	cylinder(r=1, h=0.01, center=true, $fn=4);
	sphere(d=1/*,$fn=4*/);
}
}


module writename(){
	linear_extrude(height=5)
	text("Iris", font="Madimi_One", size=5);
	
}
module writenumber(){
	linear_extrude(height=5)
	text("XXXX XXX XXX", font="Madimi_One", size=3);
	
}
module patern(){
	import("/path/to/dog ear ourline.stl");

	}
module nni(){
difference(){
	rotate([180,0,0])
	render()
	finalcurve();
	translate([-23,3,-2])
	writename();
	translate([-23,-2,-2])
	writenumber();
	translate([15,-8,-1])
	scale([.15,.15,.15])
	rotate([0,6,-10])
	patern();
}
}

nni();
intersection(){
	rotate([180,0,0])
	finalcurve();

	translate([15,-8,-1.5])
	scale([.15,.15,.15])
	rotate([0,6,-10])
	import("/path/to/dogears-Extrude.stl");
	}
