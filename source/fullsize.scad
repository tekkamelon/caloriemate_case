$fn=50;

difference(){

	// ベース部分
	minkowski(){

		sphere(r = 1);

		cube([111, 25, 105], center = true);

	}

	// 空洞部分
	translate([0, 0, 5]){

		cube([106, 20, 100], center = true);

	}

	// 引き出し口
	translate([0, 20, 106/2]){

		rotate([90, 0, 0]){

			cylinder(h = 60, r = 10);

		}

	}

}

