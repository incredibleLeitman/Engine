#include <Engine.h>
#include <Engine/Core/EntryPoint.h>

#include "Sandbox2D.h"
#include "ExampleLayer.h"

class Sandbox : public Engine::Application
{
public:
	Sandbox()
	{
		HZ_CORE_TRACE("adding example layer...");
		PushLayer(new ExampleLayer());
		//PushLayer(new Sandbox2D());
	}

	~Sandbox()
	{
	}
};

Engine::Application* Engine::CreateApplication()
{
	return new Sandbox();
}
