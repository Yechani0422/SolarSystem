#version 330 core

// Interpolated values from the vertex shaders
in vec2 UV;
in vec3 fragmentColor;
// Ouput data
out vec3 color;

// Values that stay constant for the whole mesh.
uniform sampler2D myTextureSampler;

void main() {
	// Output color = color of the texture at the specified UV
	color = texture(myTextureSampler, UV).rgb;
	//color = texture(myTextureSampler, UV).rgb*fragmentColor;
	//color = vec3(1.0f,0.0f,0.0f) * texture(myTextureSampler, UV).rgb;
}