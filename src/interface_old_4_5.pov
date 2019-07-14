#include "colors.inc"
#include "metals.inc"
#include "glass.inc"

global_settings
{
	assumed_gamma 1.0
	ambient_light color rgb 1
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
	up y
	right x * image_width / image_height
	location <0.044, 0.000, 0.201,> + vrotate(<0,0,-1,>,<30,45,0,>) * 1/6
//	look_at <0.500, 0.000, 0.375,>
	look_at <0.044, 0.000, 0.201,>
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


light_source
{
	vnormalize(<-1, 1, 1>) * 100          // light's position (translated below)
	color rgb <1, 1, 1>  // light's color
	spotlight
	point_at <0.500, 0.000, 0.375,>
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

// blue chrome
#declare Material_A = material { texture { pigment { color rgb <0.1, 0.3, 0.8> } finish { F_MetalA  } finish {ambient 0} } }
// orange chrome
#declare Material_B = material { texture { pigment { color rgb <0.8, 0.3, 0.1> } finish { F_MetalA  } finish {ambient 0} } }
// glass
#declare Material_C = material { texture { pigment { Col_Glass_General } finish { F_Glass5 } }
/*
	interior
	{
		I_Glass_Caustics1
	}
*/
}
// orange chrome glow
#declare Material_D = material { texture { pigment { color rgb <0.8, 0.3, 0.1> } finish { F_MetalA  } finish {ambient 1} } }
// orange glass
#declare Material_E = material { texture { pigment { color rgbf <0.8 * 2, 0.3 * 2, 0.1 * 2, 0.9> } finish { F_Glass5 } }
/*
	interior
	{
		I_Glass_Caustics1
	}
*/
}


//object {Axis_Markers}

// ---------------------------------------------------------Left Dial

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
	material {Material_A}
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
	material {Material_A}
}

difference
{
	sphere
	{
		<0.090, 0.000, 0.090,>, 0.060
		scale <1,0.250,1,>
	}
	cylinder
	{
		<0.090, -1.000, 0.105,>, <0.090, 1.000, 0.105,>, 0.030
	}
	cylinder
	{
		<0.090, -1.000, 0.055,>, <0.090, 1.000, 0.055,>, 0.020
	}
	material {Material_A}
}

sphere
{
	<0.090, 0.000, 0.105,>, 0.030
	scale <1,0.250,1,>
	material {Material_A}
}

union
{
	difference
	{
		sphere
		{
			<0.090, 0.000, 0.055,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.090, 0.000, 0.055,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.090, 0.000, 0.055,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_D}
		translate y * 0.0000001
	}
}

//----------------------------------------------------------------Left dots

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_D}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,-35,0,>
	translate <0.090, 0.000, 0.090,>
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,-15,0,>
	translate <0.090, 0.000, 0.090,>
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,05,0,>
	translate <0.090, 0.000, 0.090,>
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,25,0,>
	translate <0.090, 0.000, 0.090,>
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,45,0,>
	translate <0.090, 0.000, 0.090,>
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.120
	rotate <0,65,0,>
	translate <0.090, 0.000, 0.090,>
}

//-----------------------------------------------------------Right dial

union
{
	difference
	{
		torus
		{
			0.145, 0.012
			translate <1.000, 0.000, 0.000,>
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		torus
		{
			0.145, 0.012
			translate <1.000, 0.000, 0.000,>
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			torus
			{
				0.145, 0.012
				translate <1.000, 0.000, 0.000,>
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
}

/*
sphere
{
	<0.955, 0.000, 0.138,>, 0.024
	scale <1,0.25,1,>
	material {Material_C}
}
*/

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
	/*
	text
	{
		ttf "impact.TTF" "End" 1, 0
		rotate <90,0,0,>
		scale <0.025, 1.000, 0.025,>
		translate <0.946, 1.000, 0.039,>
	}
	text
	{
		ttf "impact.TTF" "Turn" 1, 0
		rotate <90,0,0,>
		scale <0.025, 1.000, 0.025,>
		translate <0.941, 0.130, 0.016,>
	}
	text
	{
		ttf "impact.TTF" "Attack" 1, 0
		rotate <90,-45,0,>
		scale <0.015, 1.000, 0.015,>
		translate <0.921, 0.130, 0.049,>
	}
	*/
	material {Material_A}
}
/*
sphere
{
	<1.000, 0.000, 0.000,>, 0.130
	scale <1,0.1,1,>
	material {Material_A}
}
*/
sphere
{
	<1.000, 0.000, 0.000,>, 0.120
	scale <1,0.25,1,>
	material {Material_A}
}

//-----------------------------------------------------------------------Right dots

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_D}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-7.5,0,>
	translate x * 1.000
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-22.5,0,>
	translate x * 1.000
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-37.5,0,>
	translate x * 1.000
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-52.5,0,>
	translate x * 1.000
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-67.5,0,>
	translate x * 1.000
}

union
{
	difference
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.000, 0.000, 0.000,>, 0.020
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.003
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.003
		clipped_by
		{
			sphere
			{
				<0.000, 0.000, 0.000,>, 0.020
				scale <1,0.25,1,>
			}
		}
		material {Material_B}
		translate y * 0.0000001
	}
	translate z * 0.200
	rotate <0,-82.5,0,>
	translate x * 1.000
}

//--------------------------------------------------------Center bar

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
	}
	cylinder
	{
		<0.662 + 0.008, -1.000, 0.077,>, <0.662 + 0.008, 1.000, 0.077,>, 0.015
	}
	cylinder
	{
		<0.662 + 0.008, -1.000, 0.038,>, <0.662 + 0.008, 1.000, 0.038,>, 0.015
	}
	material {Material_A}
}

union
{
	sphere
	{
		<0.662 + 0.008, 0.058 * 0.25, 0.077,>, 0.015
		scale <1,0.25,1,>
	}
	sphere
	{
		<0.662 + 0.008, 0.058 * 0.25, 0.038,>, 0.015
		scale <1,0.25,1,>
	}
	material {Material_A}
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
	material {Material_B}
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
		material {Material_A}
	}
	material {Material_C}
}

light_source
{
	<0.421, 0.058 * 0.25, 0.015,>          // light's position (translated below)
	color rgb <1, 1, 1>  // light's color
	spotlight
	point_at <0.421, 0.058 * 0.25, 0.058,>
}

//-----------------------------------------------------------------Center bars

cylinder
{
	<0.300, 0.000 + 0.0025, 0.125,>, <0.605 - 0.0025, 0.000, 0.125,>, 0.005
	scale <1,0.25,1,>
	material {Material_A}
}


cylinder
{
	<0.300, 0.000 + 0.0025, 0.125,>, <0.376 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	material {Material_A}	
}

cylinder
{
	<0.376 + 0.0025, 0.000, 0.125,>, <0.453 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	material {Material_A}	
}

cylinder
{
	<0.453 + 0.0025, 0.000, 0.125,>, <0.529 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	material {Material_A}	
}

cylinder
{
	<0.529 + 0.0025, 0.000, 0.125,>, <0.605 - 0.0025, 0.000, 0.125,>, 0.007
	scale <1,0.25,1>
	material {Material_A}	
}

union
{
	difference
	{
		sphere
		{
			<0.625, 0.000, 0.135,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		material {Material_A}
	}
	
	intersection
	{
		sphere
		{
			<0.625, 0.000, 0.135,>, 0.015
			scale <1,0.25,1,>
		}
		plane
		{
			-y, -0.0023
		}
		hollow
		material {Material_C}
	}
	
	plane
	{
		y, 0.0023
		clipped_by
		{
			sphere
			{
				<0.625, 0.000, 0.135,>, 0.015
				scale <1,0.25,1,>
			}
		}
		material {Material_D}
		translate y * 0.0000001
	}
}


superellipsoid
{
	<0.25, 0.25,>
	scale <0.038 - 0.005, 0.010, 0.038 - 0.005,>
	translate <0.338, 0.000, 0.173 - 0.005,>
	material {Material_E}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.038 - 0.005, 0.010, 0.038 - 0.005,>
	translate <0.414, 0.000, 0.173 - 0.005,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.038 - 0.005, 0.010, 0.038 - 0.005,>
	translate <0.491, 0.000, 0.173 - 0.005,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.038 - 0.005, 0.010, 0.038 - 0.005,>
	translate <0.567, 0.000, 0.173 - 0.005,>
	material {Material_C}
}

//---------------------------------------------------HUD windows

superellipsoid
{
	<0.25, 0.25,>
	scale <0.100, 0.010, 0.100,>
	translate <0.100, 0.000, 0.350,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.100, 0.010, 0.100,>
	translate <0.900, 0.000, 0.350,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.040, 0.000, 0.710,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.120, 0.000, 0.710,>
	material {Material_E}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.200, 0.000, 0.710,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.280, 0.000, 0.710,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.360, 0.000, 0.710,>
	material {Material_C}
}

superellipsoid
{
	<0.25, 0.25,>
	scale <0.040 - 0.005, 0.010, 0.040 - 0.005,>
	translate <0.440, 0.000, 0.710,>
	material {Material_C}
}
