cbuffer TransformConstantBuffer : register(b0)
{
	float4x4 VertexModel;
	float4x4 NormalModel;
};

cbuffer ViewProjectionConstantBuffer : register(b1)
{
	float4x4 ViewProjection[2];
};

struct VertexShaderInput
{
	min16float3 Position : Position;
	min16float3 Normal : Normal;
};

struct VertexShaderOutput
{
	min16float4 Position : SV_Position;
	min16float2 UV : TexCoord;
};

VertexShaderOutput main(VertexShaderInput input)
{
	VertexShaderOutput output;
	output.Position = min16float4(0.0, 0.0, 0.0, 0.0);
	output.UV = min16float2(0.0, 0.0);
	return output;
}