sampler TextureSampler : register(s0);

int SAMPLES = 15;
float PARAM_RadialBlurLength = 0.01f; // In radians
int angle = 90;

float4 main(float4 position : SV_Position, float4 color : COLOR0, float2 inputTexCoord : TEXCOORD0) : COLOR0
{
	float2 offsetCoord = inputTexCoord - float2(0.5, 0.5);
	float r = length(offsetCoord);
	float theta = atan2(offsetCoord.y, offsetCoord.x);

	float4 sum = (float4)0;
    float2 tapCoords = (float2)0;

	for (float i = 0; i < SAMPLES; i++)
	{
		float tapTheta = theta + i*( 3.1415926*angle/180.0f/(float)SAMPLES);
		float tapR = r; // If you alter this according to 'i' you will get a swirl.

		// Remember we need to invert the origin offset we 
		// used to create the co-ordinates, the the + 0.5 on each.
		tapCoords.x = tapR * cos(tapTheta) + 0.5;
		tapCoords.y = tapR * sin(tapTheta) + 0.5;

		sum += tex2D(TextureSampler, tapCoords);
	}
	sum /= SAMPLES;

	return sum;
}


technique Technique1
{
	pass Pass1
	{
		PixelShader = compile ps_5_0 main();
	}
}

