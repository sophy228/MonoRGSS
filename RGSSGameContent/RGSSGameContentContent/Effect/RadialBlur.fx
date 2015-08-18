sampler TextureSampler : register(s0);

float2 Center = { 0.5, 0.5 }; ///center of the screen (could be any place)
float BlurStart = 1.0f; /// blur offset
float BlurWidth = -0.1; ///how big it should be
int nsamples = 10;


float4 main(float4 position : SV_Position, float4 color : COLOR0, float2 UV : TEXCOORD0) : COLOR0
{
	UV -= Center;
	float4 c = 0;
	for (int i = 0; i <nsamples; i++) {
		float scale = BlurStart + BlurWidth*(i / (float)(nsamples - 1));
		c += tex2D(TextureSampler, UV * scale + Center);
	}
	c /= nsamples;
	return c;
}


technique Technique1
{
	pass Pass1
	{
		PixelShader = compile ps_5_0 main();
	}
}
