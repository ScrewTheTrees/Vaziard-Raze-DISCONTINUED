///instance_create_particle(X,Y,Object)
/**
* Take care when using it, its designed to randomely create less of the instancce
* For obvious performance reasons, ofc.
*/

var i;
if (irandom_range(1,global.particle_rate))
{
    i = instance_create(argument0,argument1,argument2);
    return (i);
}


