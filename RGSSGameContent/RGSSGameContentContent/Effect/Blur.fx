sampler TextureSampler : register(s0);

float BlurDistance = 0.002f;
float4 main(float4 position : SV_Position, float4 color : COLOR0, float2 texCoord : TEXCOORD0) : COLOR0
{
	float4 Color;

	// Get the texel from ColorMapSampler using a modified texture coordinate. This
	// gets the texels at the neighbour texels and adds it to Color.
	Color = tex2D(TextureSampler, float2(texCoord.x + BlurDistance, texCoord.y + BlurDistance));
	Color += tex2D(TextureSampler, float2(texCoord.x - BlurDistance, texCoord.y - BlurDistance));
	Color += tex2D(TextureSampler, float2(texCoord.x + BlurDistance, texCoord.y - BlurDistance));
	Color += tex2D(TextureSampler, float2(texCoord.x - BlurDistance, texCoord.y + BlurDistance));

	// We need to devide the color with the amount of times we added
	// a color to it, in this case 4, to get the avg. color
	Color = Color / 4;

	//if (texCoord.x > 0.495 && texCoord.x < 0.505)
	//{
	//	Color = float4(1, 0, 0, 0);
	//}

	//if (texCoord.x > 0.5)
	//{
	//	Color = tex2D(TextureSampler, float2(texCoord.x, texCoord.y));
	//}

	// returned the blurred color
	return Color;

}


technique Technique1
{
	pass Pass1
	{
		PixelShader = compile ps_5_0 main();
	}
}
