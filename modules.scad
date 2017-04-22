
include <config.scad>;

module ring(r_out, r_in)
{
    rotate([
        90,
        0,
        0
        ])
    difference()
    {
        cylinder(
            r=r_out,
            h=material_z,
            center=true
            );
        cylinder(
            r=r_in,
            h=material_z*1.2,
            center=true
            );
    }
}
