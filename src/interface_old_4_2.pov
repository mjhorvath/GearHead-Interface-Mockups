#include "colors.inc"
#include "metals.inc"
#include "glass.inc"

global_settings
{
	assumed_gamma 1.0
	ambient_light 0
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
camera
{
	location  <0.0, 2.0, -2.0> * 1/10
	look_at   <0.500, 0.000, 0.375,>
	right     x*image_width/image_height
}
*/


sky_sphere {
  pigment {
    bozo
    turbulence 2
    color_map {
      [0.0 rgb 0]
      [1.0 rgb 1]
    }
  }
}

/*
sky_sphere {
  pigment {
    gradient y
    color_map {
      [0.0 rgb <0.6,0.7,1.0>]
      [0.7 rgb <0.0,0.1,0.8>]
    }
  }
}
*/
// set a color of the background (sky)
//background { color rgb 1 }


#declare Sun = sphere
{
	vnormalize(<-1, 1, 1>) * 100, 10
	pigment {color rgb 1}
	finish {ambient 1}
}

//object {Sun}


light_source
{
	vnormalize(<-1, 1, 1>) * 100          // light's position (translated below)
	color rgb <1, 1, 1>  // light's color
	spotlight
	point_at <0.500, 0.000, 0.375,>
	looks_like {Sun}
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

#declare Texture_A = texture { pigment { color rgb <0.1, 0.3, 0.8> } finish { F_MetalA  } }
#declare Texture_B = texture { pigment { color rgb <0.8, 0.3, 0.1> } finish { F_MetalA  } }

// ----------------------------------------

//object {Axis_Markers}

difference
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.090
		scale <1,0.250,1,>
	}
	cylinder
	{
		<0.090, 0.000, 0.090,>, <0.090, 0.090, 0.090,>, 0.060
	}
	/*
	difference
	{
		cylinder
		{
			<0.090, 0.000, 0.090,>, <0.090, 0.090, 0.090,>, 0.060
		}
		cylinder
		{
			<0.090, 0.000, 0.090,>, <0.090, 0.090, 0.090,>, 0.040
		}
	}
	*/
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,022.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,067.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,112.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,157.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,202.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,247.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,292.5,0,>
		translate <0.090, 0, 0.090,>
	}
	box
	{
		<-0.001, -0.090, 0.040,>, <0.001, 0.090, 0.090,>
		rotate <0,337.5,0,>
		translate <0.090, 0, 0.090,>
	}
	prism
	{
		linear_spline
		-1, 1, 4,
		<0.000, 0.084,>, <0.011, 0.065,>, <-0.011, 0.065,>, <0.000, 0.084,>
		rotate <0,000.0,0,>
		translate <0.090, 0, 0.090,>
	}
	prism
	{
		linear_spline
		-1, 1, 4,
		<0.000, 0.084,>, <0.011, 0.065,>, <-0.011, 0.065,>, <0.000, 0.084,>
		rotate <0,090.0,0,>
		translate <0.090, 0, 0.090,>
	}
	prism
	{
		linear_spline
		-1, 1, 4,
		<0.000, 0.084,>, <0.011, 0.065,>, <-0.011, 0.065,>, <0.000, 0.084,>
		rotate <0,180.0,0,>
		translate <0.090, 0, 0.090,>
	}
	prism
	{
		linear_spline
		-1, 1, 4,
		<0.000, 0.084,>, <0.011, 0.065,>, <-0.011, 0.065,>, <0.000, 0.084,>
		rotate <0,270.0,0,>
		translate <0.090, 0, 0.090,>
	}
	texture {Texture_A}
}

difference
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.085
		scale <1,0.250,1,>
	}
	cylinder
	{
		<0.090, 0.000, 0.090,>, <0.090, 0.090, 0.090,>, 0.060
	}
	texture {Texture_A}
}

sphere
{
	<0.090, 0.000, 0.090,>, 0.060
	scale <1,0.250,1,>
	texture {Texture_A}
}

/*
intersection
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.090
		scale <1,0.250,1,>
	}
	cylinder
	{
		<0.090, 0.000, 0.090,>, <0.090, 0.090, 0.090,>, 0.040
	}
	texture {Texture_A}
}
*/
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
	superellipsoid
	{
		<0.25, 0.25>
		scale <0.226, 0.058 * 0.25, 0.043,>
		translate <0.421, 0.058 * 0.25, 0.058,>
		texture {Texture_A}
	}
	texture {Texture_A}
}

superellipsoid
{
	<0.25, 0.25>
	scale <0.226, 0.058 * 0.25, 0.043,>
	translate <0.421, 0.058 * 0.25, 0.058,>
	clipped_by
	{
		cylinder
		{
			<0.090, 0.000, 0.058,>, <0.662, 0.000, 0.058,>, 0.058
			scale <1,0.25,1,>
//			inverse
		}
	}
//	translate <0,0.001,0,>
	texture {Texture_B}
}

intersection
{
	cylinder
	{
		<0.090, 0.000, 0.058,>, <0.662, 0.000, 0.058,>, 0.058
		scale <1,0.25,1,>
	}
	superellipsoid
	{
		<0.25, 0.25>
		scale <0.226 - 0.000, 0.058 * 0.25 - 0.000, 0.043 - 0.000,>
		translate <0.421, 0.058 * 0.25, 0.058,>
		texture {Texture_A}
	}
//	hollow
	material
	{
		texture
		{
			pigment
			{
				Col_Glass_General
			}
			finish
			{
				F_Glass5
			}
		}
		interior
		{
			I_Glass_Caustics1
		}
		interior
		{
			media
			{
				emission <0.8, 0.3, 0.1> * 2
			}
		}
	}
}

light_source
{
	<0.421, 0.058 * 0.25, 0.015,>          // light's position (translated below)
	color rgb <1, 1, 1>  // light's color
	spotlight
	point_at <0.421, 0.058 * 0.25, 0.058,>
}
/*
light_source
{
	<0.421, 0.058 * 0.25, 0.100,>          // light's position (translated below)
	color rgb <1, 1, 1>  // light's color
	spotlight
	point_at <0.421, 0.058 * 0.25, 0.058,>
}
*/
sphere
{
	<0.044, 0.000, 0.201,>, 0.015
	scale <1,0.25,1,>
	texture {Texture_A}
}


sphere
{
	<0.090, 0.000, 0.210,>, 0.015
	scale <1,0.25,1,>
	texture {Texture_A}
}


sphere
{
	<0.136, 0.000, 0.201,>, 0.015
	scale <1,0.25,1,>
	texture {Texture_A}
}


sphere
{
	<0.175, 0.000, 0.175,>, 0.015
	scale <1,0.25,1,>
	texture {Texture_A}
}


sphere
{
	<0.201, 0.000, 0.136,>, 0.015
	scale <1,0.25,1,>
	texture {Texture_A}
}


/*
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
	texture {Texture_A}
}
*/

difference
{
	sphere
	{
		<1.000, 0.000, 0.000,>, 0.160
		scale <1,0.25,1,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-009,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-018,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-027,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-036,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-045,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-054,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-063,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-072,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.160,>, <0.001, 1.000, 0.130,>
		rotate <0,-081,0,>
		translate <1.000, 0, 0.000,>
	}
	difference
	{
		cylinder
		{
			<1.000, -1.000, 0.000,>, <1.000, 1.000, 0.000,>, 0.135
		}
//		cylinder
//		{
//			<1.000, -1.000, 0.000,>, <1.000, 1.000, 0.000,>, 0.125
//		}
	}
	texture {Texture_A}
}

torus
{
	0.145, 0.005
	translate <1.000, 0.000, 0.000,>
	texture {Texture_A}
}

difference
{
	sphere
	{
		<1.000, 0.000, 0.000,>, 0.130
		scale <1,0.25,1,>
	}
	box
	{
		<-0.001, -1.000, 0.130,>, <0.001, 1.000, 0.090,>
		rotate <0,-030,0,>
		translate <1.000, 0, 0.000,>
	}
	box
	{
		<-0.001, -1.000, 0.130,>, <0.001, 1.000, 0.090,>
		rotate <0,-060,0,>
		translate <1.000, 0, 0.000,>
	}
	difference
	{
		cylinder
		{
			<1.000, -1.000, 0.000,>, <1.000, 1.000, 0.000,>, 0.091
		}
		cylinder
		{
			<1.000, -1.000, 0.000,>, <1.000, 1.000, 0.000,>, 0.089
		}
	}
	texture {Texture_A}
}

sphere
{
	<1.000, 0.000, 0.000,>, 0.130
	scale <1,0.1,1,>
	texture {Texture_A}
}

sphere
{
	<1.000, 0.000, 0.000,>, 0.090
	scale <1,0.25,1,>
	texture {Texture_A}
}

sphere
{
	<0.969, 0.000, 0.198,>, 0.020
	scale <1,0.25,1,>
	texture {Texture_A}
}

sphere
{
	<0.909, 0.000, 0.178,>, 0.020
	scale <1,0.25,1,>
	texture {Texture_A}
}

sphere
{
	<0.859, 0.000, 0.141,>, 0.020
	scale <1,0.25,1,>
	texture {Texture_A}
}

sphere
{
	<0.822, 0.000, 0.091,>, 0.020
	scale <1,0.25,1,>
	texture {Texture_A}
}

sphere
{
	<0.802, 0.000, 0.031,>, 0.020
	scale <1,0.25,1,>
	texture {Texture_A}
}
/*
superellipsoid
{
	<0.25, 0.25>
	scale <0.100, 0.010, 0.100,>
	translate <0.100, 0.000, 0.380,>
	texture {Texture_A}
}
*/


sphere
{
	<0.500, 0.000, 0.375,>, 0.100
	hollow
	material
	{
		texture
		{
			pigment
			{
				color rgbt 1
			}
		}
		/*
		interior
		{
			I_Glass_Caustics1
		}
		*/
		interior
		{
			media
			{
				emission <0.8, 0.3, 0.1>
			}
		}
	}
}


cylinder
{
	<0.300, 0.000 + 0.0025, 0.125,>, <0.605 - 0.0025, 0.000, 0.125,>, 0.005
	scale <1,0.25,1,>
	texture {Texture_A}
}


cylinder
{
	<0.300, 0.000 + 0.0025, 0.125,>, <0.376 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	texture {Texture_A}	
}

cylinder
{
	<0.376 + 0.0025, 0.000, 0.125,>, <0.453 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	texture {Texture_A}	
}

cylinder
{
	<0.453 + 0.0025, 0.000, 0.125,>, <0.529 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	texture {Texture_A}	
}

cylinder
{
	<0.529 + 0.0025, 0.000, 0.125,>, <0.605 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	texture {Texture_A}	
}