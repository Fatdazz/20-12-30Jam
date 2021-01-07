//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec2 v_vTexcoord_B;
varying vec4 v_vB;
varying vec4 v_vA;

uniform sampler2D Texture01;
uniform float     iTime;

void main()
{
	
	
	//vec2 uv = fragCoord.xy / iResolution.xy;
	vec2 block = floor((v_vTexcoord.xy * v_vA.zw) / vec2(16));
	vec2 uv_noise = block / vec2(64);
	uv_noise += floor(vec2(iTime) * vec2(1234.0, 3543.0)) / vec2(64);
	
	float block_thresh = pow(fract(iTime * 1236.0453), 2.0) * 0.2;
	float line_thresh = pow(fract(iTime * 2236.0453), 3.0) * 0.7;
	
	vec2 uv_r = v_vTexcoord, uv_g = v_vTexcoord, uv_b = v_vTexcoord;
	
		// glitch some blocks and lines
	if (texture2D(Texture01, uv_noise).r < block_thresh ||
		texture2D(Texture01, vec2(uv_noise.y, 0.0)).g < line_thresh) {

		vec2 dist = (fract(uv_noise) - 0.5) * 0.3;
		uv_r += dist * 0.1;
		uv_g += dist * 0.2;
		uv_b += dist * 0.125;
	}

	gl_FragColor.r = texture2D(gm_BaseTexture, uv_r).r;
	gl_FragColor.g = texture2D(gm_BaseTexture, uv_g).g;
	gl_FragColor.b = texture2D(gm_BaseTexture, uv_b).b;
	
	
	
	gl_FragColor = vec4(1.0,0.3,0.5,1.0);
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
}




/*
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
	vec2 uv = fragCoord.xy / iResolution.xy;
	vec2 block = floor(fragCoord.xy / vec2(16));
	vec2 uv_noise = block / vec2(64);
	uv_noise += floor(vec2(iTime) * vec2(1234.0, 3543.0)) / vec2(64);
	
	float block_thresh = pow(fract(iTime * 1236.0453), 2.0) * 0.2;
	float line_thresh = pow(fract(iTime * 2236.0453), 3.0) * 0.7;
	
	vec2 uv_r = uv, uv_g = uv, uv_b = uv;

	// glitch some blocks and lines
	if (texture(iChannel1, uv_noise).r < block_thresh ||
		texture(iChannel1, vec2(uv_noise.y, 0.0)).g < line_thresh) {

		vec2 dist = (fract(uv_noise) - 0.5) * 0.3;
		uv_r += dist * 0.1;
		uv_g += dist * 0.2;
		uv_b += dist * 0.125;
	}

	fragColor.r = texture(iChannel0, uv_r).r;
	fragColor.g = texture(iChannel0, uv_g).g;
	fragColor.b = texture(iChannel0, uv_b).b;

	// loose luma for some blocks
	if (texture(iChannel1, uv_noise).g < block_thresh)
		fragColor.rgb = fragColor.ggg;

	// discolor block lines
	if (texture(iChannel1, vec2(uv_noise.y, 0.0)).b * 3.5 < line_thresh)
		fragColor.rgb = vec3(0.0, dot(fragColor.rgb, vec3(1.0)), 0.0);

	// interleave lines in some blocks
	if (texture(iChannel1, uv_noise).g * 1.5 < block_thresh ||
		texture(iChannel1, vec2(uv_noise.y, 0.0)).g * 2.5 < line_thresh) {
		float line = fract(fragCoord.y / 3.0);
		vec3 mask = vec3(3.0, 0.0, 0.0);
		if (line > 0.333)
			mask = vec3(0.0, 3.0, 0.0);
		if (line > 0.666)
			mask = vec3(0.0, 0.0, 3.0);
		
		fragColor.xyz *= mask;
	}
}/*