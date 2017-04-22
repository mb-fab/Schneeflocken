
include <config.scad>;
use <canvas.scad>;

module snowflake()
{
    for (i = [0:mirror_symmetry-1])
    {
        angle = i * mirror_angle;
        rotate([
            0,
            angle,
            0
            ])
        canvas();
    }
}

snowflake();
