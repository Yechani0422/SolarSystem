#version 330 core

// 프로그램으로부터 입력 받을 데이터에 대한 정보
layout(location = 0) in vec3 vertexPosition_modelspace;

void main()
{
	// 정점의 위치(xyz)를 결정.
	gl_Position.xyz = vertexPosition_modelspace / 2;

	// 특별한 이유가 없으면 일단 1.0
	gl_Position.w = 1.0;
}