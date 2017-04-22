
include <config.scad>;
use <modules.scad>;

module canvas()
{
    intersection()
    {
        scale([
            0.5,
            1,
            1
            ])
        ring(10, 9);

        translate([
            0,
            -material_z/2,
            0
            ])
        cube([
            cutout_x,
            material_z,
            cutout_z
            ]);
    }
}

module canvas_mirrored()
{
    canvas();

    mirror()
    canvas();
}

module snowflake_atom()
{
    for (i = [0:mirror_symmetry-1])
    {
        angle = i * mirror_angle;
        rotate([
            0,
            angle,
            0
            ])
        canvas_mirrored();
    }

    translate([
        0,
        0,
        11.5
        ])
    ring(2, 1.5);
}

snowflake_atom();

