module shaft(){
	rotate([0,90,0])
	cylinder(d=8,h=189,center = true,$fn=50);
	}
module ring(){
	difference(){
		scale([46,66,1])
		cylinder(d=1,h=8,center = true,$fn = 60);
		scale([34,54,1])
		cylinder(d=1,h=12.1,center = true,$fn = 60);
		
		}
	}
module end(){
	cube([34,32,10],center = true);
	}

module keycut(){
	translate([14,5,0])
	cube([10,7,12.1],center = true);
	translate([-14,5,0])
	cube([10,7,12.1],center = true);
	}

module key(){
	shaft();
	translate([117	,0,0])
	ring();
}

minkowski(){
	render ()
	key();
	sphere(r=2,$fn=50);
}
minkowski(){
difference(){
	translate([-66.5 ,17,0])
	end();
	translate([-66.5 ,17,0])
	keycut();
}
sphere(d=1,$fn=50);
}

