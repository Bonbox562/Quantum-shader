#if !defined INCLUDE_LIGHT_LPV_LIGHT_COLORS
#define INCLUDE_LIGHT_LPV_LIGHT_COLORS

const vec3[32] light_color = vec3[32](
	vec3(1.00, 1.00, 1.00) * 8.0, // Strong white light
	vec3(1.00, 1.00, 1.00) * 7.5, // Medium white light
	vec3(1.00, 1.00, 1.00) * 4.5, // Weak white light
	vec3(1.00, 0.75, 0.45) * 9.0, // Strong golden light
	vec3(1.00, 0.75, 0.45) *  6.0, // Medium golden light
	vec3(1.00, 0.75, 0.45) *  4.5, // Weak golden light
	vec3(1.00, 0.18, 0.10) *  4.5, // Redstone components
	vec3(1.00, 0.30, 0.10) *  6.0, // Lava
	vec3(1.00, 0.60, 0.30) *  6.0, // Medium orange light
	vec3(1.00, 0.75, 0.30) *  3.0, // Brewing stand
	vec3(1.00, 0.57, 0.30) *  9.0, // Medium golden light
	vec3(0.45, 0.73, 1.00) *  6.0, // Soul lights
	vec3(0.45, 0.73, 1.00) *  9.0, // Beacon
	vec3(0.75, 1.00, 0.83) *  3.0, // Sculk
	vec3(0.75, 1.00, 0.83) *  6.0, // End portal frame
	vec3(0.60, 0.10, 1.00) *  4.5, // Pink glow
	vec3(0.75, 1.00, 0.50) *  3.0, // Sea pickle
	vec3(1.00, 0.50, 0.25) *  6.0, // Nether plants
	vec3(1.00, 0.57, 0.30) *  6.0, // Medium golden light
	vec3(1.00, 0.65, 0.30) *  6.0, // Ochre froglight
	vec3(0.86, 1.00, 0.44) *  6.0, // Verdant froglight
	vec3(0.75, 0.44, 1.00) *  6.0, // Pearlescent froglight
	vec3(0.60, 0.10, 1.00) *  9.0, // Enchanting table
	vec3(0.75, 0.44, 1.00) *  6.0, // Amethyst cluster
	vec3(0.75, 0.44, 1.00) *  6.0, // Calibrated sculk sensor
	vec3(0.75, 1.00, 0.83) *  6.0, // Active sculk sensor
	vec3(1.00, 0.18, 0.10) *  2.0, // Redstone block
	vec3(0.0), // Unused
	vec3(0.0), // Unused
	vec3(0.0), // Unused
	vec3(0.60, 0.10, 1.00) * 24.0, // Nether portal
	vec3(0.0)  // End portal
);

const vec3[16] tint_color = vec3[16](
	vec3(1.0, 0.1, 0.1), // Red
	vec3(1.0, 0.5, 0.1), // Orange
	vec3(1.0, 1.0, 0.1), // Yellow
	vec3(0.7, 0.7, 0.0), // Brown
	vec3(0.1, 1.0, 0.1), // Green
	vec3(0.5, 1.0, 0.5), // Lime
	vec3(0.1, 0.1, 1.0), // Blue
	vec3(0.5, 0.5, 1.0), // Light blue
	vec3(0.1, 1.0, 1.0), // Cyan
	vec3(0.7, 0.1, 1.0), // Purple
	vec3(1.0, 0.1, 1.0), // Magenta
	vec3(1.0, 0.5, 1.0), // Pink
	vec3(0.1, 0.1, 0.1), // Black
	vec3(0.9, 0.9, 0.9), // White
	vec3(0.3, 0.3, 0.3), // Gray
	vec3(0.7, 0.7, 0.7)  // Light gray
);

#endif // INCLUDE_LIGHT_LPV_LIGHT_COLORS
