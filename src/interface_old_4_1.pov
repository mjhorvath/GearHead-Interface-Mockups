// Persistence of Vision Ray Tracer Scene Description File
// File: ?.pov
// Vers: 3.6
// Desc: Basic Scene Example
// Date: mm/dd/yy
// Auth: ?
//

#version 3.6;

#include "colors.inc"
#include "metals.inc"

global_settings {
  assumed_gamma 1.0
}

// ----------------------------------------

camera
{
	orthographic
	up y * image_height / image_width
	right x
	location <0.500, 10.000, 0.375,>
	look_at <0.500, 0.000, 0.375,>
}

/*
camera {
  location  <0.0, 2.0, -2.0> * 1/10
  look_at   <0.500, 0.000, 0.375,>
  right     x*image_width/image_height
}
*/

sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 rgb <0.6,0.7,1.0>]
      [0.7 rgb <0.0,0.1,0.8>]
    }
  }
}

light_source {
  vnormalize(<-1, 1, 1>) * 100          // light's position (translated below)
  color rgb <1, 1, 1>  // light's color
  parallel
}

#declare Axis_Markers = union
{
	sphere
	{
		0,0.005
		pigment{color rgb <0,0,0,>}
	}
	cylinder
	{
		0,x,0.005
		pigment{color rgb <1,0,0,>}
	}
	cylinder
	{
		0,y,0.005
		pigment{color rgb <0,1,0,>}
	}
	cylinder
	{
		0,z,0.005
		pigment{color rgb <0,0,1,>}
	}
}

// ----------------------------------------

object
{
	Axis_Markers
}

difference
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.090
		scale <1,0.250,1,>
	}
	torus
	{
		0.050, 0.010
		translate <0.090, 0.090 * 0.250, 0.090,>
	}
	box
	{
		<-0.005, -0.090, 0.060,>, <0.005, 0.090, 0.090,>
		rotate <0,22.5,0,>
		translate <0.090, 0, 0.090,>
	}
	texture {T_Chrome_5E}
}

sphere
{
	<0.090, 0.000, 0.090,>, 0.080
	scale <1,0.250,1,>
	texture {T_Chrome_5E}
}

intersection
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.090
		scale <1,0.250,1,>
	}
	cylinder
	{
		<0.090, -0.090 * 0.250, 0.090,>, <0.090, 0.090 * 0.250, 0.090,>, 0.040
	}
	texture {T_Chrome_5E}
}

difference
{
	union
	{
		cylinder
		{
			<0.090, 0.000, 0.058,>, <0.662, 0.000, 0.058,>, 0.058
			scale <1,0.25,1,>
		}
		sphere
		{
			<0.662, 0.000, 0.058,>, 0.058
			scale <1,0.25,1,>
		}
	}
	cylinder
	{
		<0.090, -0.090, 0.090,>, <0.090, 0.090, 0.090,>, 0.090
	}
	texture {T_Chrome_5E}
}

sphere
{
	<0.044, 0.000, 0.201,>, 0.015
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.090, 0.000, 0.210,>, 0.015
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.136, 0.000, 0.201,>, 0.015
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.175, 0.000, 0.175,>, 0.015
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.201, 0.000, 0.136,>, 0.015
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}


difference
{
	sphere
	{
		<1.000, 0.000, 0.000,>, 0.160
		scale <1,0.25,1,>
	}
	torus
	{
		0.130, 0.010
		translate <1.000, 0.160 * 0.125, 0.000,>
	}
	torus
	{
		0.090, 0.010
		translate <1.000, 0.160 * 0.250, 0.000,>
	}
	texture {T_Chrome_5E}
}

sphere
{
	<0.969, 0.000, 0.198,>, 0.020
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.909, 0.000, 0.178,>, 0.020
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.859, 0.000, 0.141,>, 0.020
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.822, 0.000, 0.091,>, 0.020
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

sphere
{
	<0.802, 0.000, 0.031,>, 0.020
	scale <1,0.25,1,>
	texture {T_Chrome_5E}
}

superellipsoid
{
	<0.25, 0.25>
	scale <0.100, 0.010, 0.100,>
	translate <0.100, 0.000, 0.380,>
	texture {T_Chrome_5E}
}
