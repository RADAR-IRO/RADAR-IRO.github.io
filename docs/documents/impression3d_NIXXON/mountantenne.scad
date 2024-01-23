$fn=100;

tolerance = 1.1;

rInt = 13/8;    //Rayon intérieur
rExt = 2;       //Rayon extérieur
hCentre = 2;    //hauteur morceau du centre
rPipes = 5/16*tolerance;  //rayon des tuyaux minces
rFils = 3/4;    //rayon du trou pour les fils
rVis = 5/32*tolerance;    //rayon des bolts
hTop = 1;       //hauteur morceau du top
hBot = 3/2;     //hauteur morceau du bas
hVTrep = 3/8*tolerance;   //profondeur de vis de trépied
rVTrep = 1/8*tolerance;   //rayon de vis de trépied

difference() {          //centre
  union() {
    difference() {
      cylinder(h=hCentre, r=rExt);
      translate([0,0,-1])
        cylinder(h=hCentre+2, r=rInt);
      rotate([90,0,0])
        cylinder(h=rExt*2+2,r=rPipes,center=true);
      rotate([0,90,0])
        cylinder(h=rExt*2+2,r=rPipes,center=true);
      translate([0,0,hCentre])
        rotate([0,90,0])
          cylinder(h=3,r=rFils);
    }
    translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
      cylinder(h=hCentre, r=rVis*3.2);
    translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
      cylinder(h=hCentre, r=rVis*3.2);
    translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
      cylinder(h=hCentre, r=rVis*3.2);
    translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
      cylinder(h=hCentre, r=rVis*3.2);
  }
  translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
    cylinder(h=hCentre+2, r=rVis);
  translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
    cylinder(h=hCentre+2, r=rVis);
  translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
    cylinder(h=hCentre+2, r=rVis);
  translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
    cylinder(h=hCentre+2, r=rVis);
}

rotate([180,0,0])       //top
  difference () {
    union() {
      difference() {
        cylinder(h=hTop, r=rExt);
        translate([0,0,-1])
          cylinder(h=hTop+2, r=rInt);
        rotate([90,0,0])
          cylinder(h=rExt*2+2,r=rPipes,center=true);
        rotate([0,90,0])
          cylinder(h=rExt*2+2,r=rPipes,center=true);
      }
      translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
        cylinder(h=hTop, r=rVis*3.2);
      translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
        cylinder(h=hTop, r=rVis*3.2);
      translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
        cylinder(h=hTop, r=rVis*3.2);
      translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
        cylinder(h=hTop, r=rVis*3.2);
    }
    translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
      cylinder(h=hTop+2, r=rVis);
    translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
      cylinder(h=hTop+2, r=rVis);
    translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
      cylinder(h=hTop+2, r=rVis);
    translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
      cylinder(h=hTop+2, r=rVis);
  }
translate([0,0,2])      //bottom
  difference() {
    union() {
      difference() {
        cylinder(h=hBot, r=rExt);
        translate([0,0,-1])
            cylinder(h=hBot+1-hVTrep*1.1, r=rInt);
        rotate([0,90,0])
            cylinder(h=3,r=rFils);
        translate([0,0,hBot-hVTrep])
            cylinder(h=hVTrep+1, r=rVTrep);
      }
      translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
        cylinder(h=hBot, r=rVis*3.2);
      translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), 0])
        cylinder(h=hBot, r=rVis*3.2);
      translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
        cylinder(h=hBot, r=rVis*3.2);
      translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), 0])
        cylinder(h=hBot, r=rVis*3.2);
    }
    translate([0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
      cylinder(h=hBot+2, r=rVis);
    translate([-0.70710678118*(rVis+rExt), 0.70710678118*(rVis+rExt), -1])
      cylinder(h=hBot+2, r=rVis);
    translate([-0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
      cylinder(h=hBot+2, r=rVis);
    translate([0.70710678118*(rVis+rExt), -0.70710678118*(rVis+rExt), -1])
      cylinder(h=hBot+2, r=rVis);
  }
*translate([0,0,2])     //bottom (variante)
    difference() {
        cylinder(h=5, r=2);
        translate([0,0,-1])
            cylinder(h=2, r=13/8);
        rotate([0,90,0])
            cylinder(h=3,r=3/4);
        translate([0,0,2])
            cylinder(h=4, r=9/8);
    }