sampler TextureSampler : register(s0);

float fTimer;
float amp;
float length;
float speed;
float phase;

float4 main(float4 position : SV_Position, float4 color : COLOR0, float2 Tex : TEXCOORD0) : COLOR0
{
	Tex.x += amp*sin((2 * 3.1415926*speed / length)*(fTimer - Tex.x / speed) + phase);
	Tex.y += amp*cos((2 * 3.1415926*speed / length)*(fTimer - Tex.y / speed) + phase);
	float4 Color = tex2D(TextureSampler, Tex);
    return Color;

}


technique Technique1
{
	pass Pass1
	{
		PixelShader = compile ps_5_0 main();
	}
}
