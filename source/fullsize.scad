// 変数の宣言
$fn = 50;

// 箱のサイズ
caloriemate_x = 106;
caloriemate_y = 20;
caloriemate_z = 100;
clearance = 0.5;

difference(){

	// ベース部分
	minkowski(){

		// フィレットを付ける
		sphere(r = 2);

		cube([caloriemate_x + 5.2, caloriemate_y + 4, caloriemate_z + 4], center = true);

	}

	// 空洞部分
	 translate([0, 0, 5]){

		cube([caloriemate_x + clearance + 1.2, caloriemate_y + clearance, caloriemate_z], center = true);

	 }

	// 引き出し口
	translate([0, 20, 107/2]){

		// x軸を中心に90度回転
		rotate([90, 0, 0]){

			cylinder(h = 60, r = 10);

		}

	}

}

