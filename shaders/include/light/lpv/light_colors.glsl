#if !defined INCLUDE_LIGHT_LPV_LIGHT_COLORS
#define INCLUDE_LIGHT_LPV_LIGHT_COLORS

const vec3[32] light_color = vec3[32](
	vec3(1.00, 1.00, 1.00) * 8.0 * COLORED_LIGHTS_I, // Strong white light
	vec3(1.00, 1.00, 1.00) * 7.5 * COLORED_LIGHTS_I, // Medium white light
	vec3(1.00, 1.00, 1.00) * 4.5 * COLORED_LIGHTS_I, // Weak white light
	vec3(1.00, 0.75, 0.45) * 9.0 * COLORED_LIGHTS_I, // Strong golden light
	vec3(1.00, 0.75, 0.45) * 6.0 * COLORED_LIGHTS_I, // Medium golden light
	vec3(1.00, 0.75, 0.45) * 4.5 * COLORED_LIGHTS_I, // Weak golden light
	vec3(1.00, 0.18, 0.10) * 4.5 * COLORED_LIGHTS_I, // Redstone components
	vec3(1.00, 0.30, 0.10) * 6.0 * COLORED_LIGHTS_I, // Lava
	vec3(1.00, 0.60, 0.30) * 6.0 * COLORED_LIGHTS_I, // Medium orange light
	vec3(1.00, 0.75, 0.30) * 3.0 * COLORED_LIGHTS_I, // Brewing stand
	vec3(1.00, 0.57, 0.30) * 9.0 * COLORED_LIGHTS_I, // Medium golden light
	vec3(0.45, 0.73, 1.00) * 6.0 * COLORED_LIGHTS_I, // Soul lights
	vec3(0.45, 0.73, 1.00) * 9.0 * COLORED_LIGHTS_I, // Beacon
	vec3(0.75, 1.00, 0.83) * 3.0 * COLORED_LIGHTS_I, // Sculk
	vec3(0.75, 1.00, 0.83) * 6.0 * COLORED_LIGHTS_I, // End portal frame
	vec3(0.60, 0.10, 1.00) * 7.5 * COLORED_LIGHTS_I, // Pink glow
	vec3(0.75, 1.00, 0.50) * 5.0 * COLORED_LIGHTS_I, // Sea pickle
	vec3(1.00, 0.50, 0.25) * 6.0 * COLORED_LIGHTS_I, // Nether plants
	vec3(1.00, 0.57, 0.30) * 6.0 * COLORED_LIGHTS_I, // Medium golden light
	vec3(1.00, 0.65, 0.30) * 6.0 * COLORED_LIGHTS_I, // Ochre froglight
	vec3(0.86, 1.00, 0.44) * 6.0 * COLORED_LIGHTS_I, // Verdant froglight
	vec3(0.75, 0.44, 1.00) * 6.0 * COLORED_LIGHTS_I, // Pearlescent froglight
	vec3(0.60, 0.10, 1.00) * 9.0 * COLORED_LIGHTS_I, // Enchanting table
	vec3(0.75, 0.44, 1.00) * 6.0 * COLORED_LIGHTS_I, // Amethyst cluster
	vec3(0.75, 0.44, 1.00) * 6.0 * COLORED_LIGHTS_I, // Calibrated sculk sensor
	vec3(0.75, 1.00, 0.83) * 6.0 * COLORED_LIGHTS_I, // Active sculk sensor
	vec3(1.00, 0.18, 0.10) * 8.0 * COLORED_LIGHTS_I, // Redstone block
	vec3(0.0), // Unused
	vec3(0.0), // Unused
	vec3(0.0), // Unused
	vec3(0.60, 0.10, 1.00) * 24.0 * COLORED_LIGHTS_EMISSION, // Nether portal
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
