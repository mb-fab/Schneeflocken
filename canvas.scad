
include <config.scad>;

module canvas()
{
    cube([
        material_z,
        material_z,
        10
        ], center=true);
}

canvas();
