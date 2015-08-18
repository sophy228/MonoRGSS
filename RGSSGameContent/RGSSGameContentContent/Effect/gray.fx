sampler TextureSampler : register(s0);


float4 main(float4 position : SV_Position, float4 color : COLOR0, float2 texCoord : TEXCOORD0) : COLOR0
{
	float4 tex = tex2D(TextureSampler, texCoord);
	float value = (tex.r + tex.g + tex.b) / 3;
	tex.r = value;
	tex.g = value;
	tex.b = value;
	return tex;
}


technique Technique1
{
	pass Pass1
	{
		PixelShader = compile ps_5_0 main();
	}
}